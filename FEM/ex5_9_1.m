% coordinates
coord = zeros(25,2);
a1 = [0,1.25,2.5,3.75,5];
a2 = [0,2.5,5,7.5,10];
for i=0:4
    coord(i*5+1:(i+1)*5,1) = a1;
    coord(i*5+1:(i+1)*5,2) = a2(i+1);
end

% nodes
nodes = zeros(32,3);
nodes(1:4,1)   = 1:4;   nodes(1:4,2)   = 2:5;   nodes(1:4,3)   = 7:10;
nodes(5:8,1)   = 1:4;   nodes(5:8,2)   = 7:10;  nodes(5:8,3)   = 6:9;
nodes(9:12,1)  = 6:9;   nodes(9:12,2)  = 7:10;  nodes(9:12,3)  = 12:15;
nodes(13:16,1) = 6:9;   nodes(13:16,2) = 12:15; nodes(13:16,3) = 11:14;
nodes(17:20,1) = 11:14; nodes(17:20,2) = 12:15; nodes(17:20,3) = 17:20;
nodes(21:24,1) = 11:14; nodes(21:24,2) = 17:20; nodes(21:24,3) = 16:19;
nodes(25:28,1) = 16:19; nodes(25:28,2) = 17:20; nodes(25:28,3) = 22:25;
nodes(29:32,1) = 16:19; nodes(29:32,2) = 22:25; nodes(29:32,3) = 21:24;

% boundary conditions
bcarr = zeros(25,2);
bcarr(1,:) = [1,0];
bcarr(2,:) = [1,0];
bcarr(3,:) = [1,0];
bcarr(4,:) = [1,0];
bcarr(5,:) = [1,0];
bcarr(6,:) = [1,0];
bcarr(11,:) = [1,0];
bcarr(16,:) = [1,0];
bcarr(21,:) = [1,0];
bcarr(22,:) = [1,38.2683];
bcarr(23,:) = [1,70.7107];
bcarr(24,:) = [1,92.388];
bcarr(25,:) = [1,100];
% general
n_elements = 32;
n_nodes = 25;
KK = zeros(n_nodes, n_nodes);

for i=1:n_elements
    i1 = nodes(i,1); i2 = nodes(i,2); i3 = nodes(i,3);
    x1 = coord(i1,1); x2 = coord(i2,1); x3 = coord(i3,1);
    y1 = coord(i1,2); y2 = coord(i2,2); y3 = coord(i3,2);

    K = elemLaplace(x1,x2,x3,y1,y2,y3);
    KK = assemble(K, KK, i, nodes);
end
[KK, ff] = bc(KK, bcarr);
X = KK\ff;