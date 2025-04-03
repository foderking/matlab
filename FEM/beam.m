n = 4; L =2; EI = 2000; l = L/n; q = 5;
K = EI/l^3 * [12 6*l -12 6*l;6*l 4*l^2 -6*l 2*l^2;-12 -6*l 12 -6*l;6*l 2*l^2 -6*l 4*l^2];F = q/12*[6*l;l^2;6*l;-l^2];
n_nodes = 4 + 2*(n-1); bounds=zeros(n_nodes,2);
bounds(1,:) = [1 0]; bounds(n_nodes-1,:) = [1 0];

[KK, FF] = genNbeams(K,F,n);
[KK ,FF] = bound(KK,FF,bounds);
X = KK\FF;
dc = 5*q*L^4/384/EI;
theta = -q*L^3/24/EI;