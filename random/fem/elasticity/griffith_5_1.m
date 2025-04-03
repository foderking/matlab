coords = [
         0    1.0000
    0.5000    1.0000
    1.0000    1.0000
         0    0.5000
    0.5000    0.5000
    1.0000    0.5000
         0         0
    0.5000         0
    1.0000         0
];

g = [
     1     2     4
     5     4     2
     2     3     5
     6     5     3
     4     5     7
     8     7     5
     5     6     8
     9     8     6
];

displacement_bc = [1,7,13,14,16,18];
force_bc = [2,-0.25;4,-0.5;6,-0.25];

n = 9;
ne = 8;
gg = zeros(size(g,1),size(g,2)*2);
for i=1:size(g,1)
    tmp = [g(i,:)*2-1;g(i,:)*2];
    gg(i,:) = tmp(:);
end

KK = zeros(2*n);

%% assemble
for i=1:ne
    xyi = coords(g(i,:),:);
    %KK(gg(i,:),gg(i,:)) =  KK(gg(i,:),gg(i,:)) +  tri1(1e6,0.3,xyi);
    KK = assemble(KK,tri1(1e6,0.3,xyi),gg(i,:));
end

%% bc
KKK = xbc(KK,displacement_bc);
FF = fbc(2*n,force_bc);

%% solution
x = KKK \ FF;
x(1:2:2*n)
x(2:2:2*n)