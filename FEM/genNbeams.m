function [KK, FF] = genNbeams(K,F,n)
%GENNBEAMS Summary of this function goes here
%   Detailed explanation goes here
n_nodes = 4 + 2*(n-1);
KK = zeros(n_nodes); FF = zeros(n_nodes,1);

for i=1:2:n_nodes-2
    %i = (j-1)/2+1;
    KK = assemble(K,KK,1,i:i+3);
    FF(i:i+3) = FF(i:i+3) + F; 
end
end

