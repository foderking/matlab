function [KK] = assemble(K, KK, e, nodes)
%ASSEMBLE Summary of this function goes here
%   Detailed explanation goes here
for i = 1:size(K,1)
    for j = 1:size(K,1)
        ii = nodes(e, i);
        jj = nodes(e, j);

        KK(ii, jj) = KK(ii, jj) + K(i,j);
    end
end

end

