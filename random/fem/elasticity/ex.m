nn = 4;
ne = 2;
coords = [
    0,0
    4,0
    0,2
    4,2
];

g = [
    3,1,2
    2,4,3
];
gg = zeros(ne,6);
for i=1:ne
    tmp = [g(i,:)*2-1;g(i,:)*2];
    gg(i,:) = tmp(:);
end

d_bc = [1,2,5,6];
f_bc = [8,-2500;4,-2500];
E = 200e9; v = 0.3;

KK = zeros(2*nn);

%% assemble
for i=1:ne
    xyi = coords(g(i,:),:);
    %KK(gg(i,:),gg(i,:)) =  KK(gg(i,:),gg(i,:)) +  tri1(E,v,xyi);
    KK = assemble(KK,tri1(E,v,xyi),gg(i,:));
end

%% bc
KKK = xbc(KK,d_bc);
FF = fbc(2*nn,f_bc);

%% solution
x = KKK \ FF;