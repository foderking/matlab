function [KK, ff] = bc(KK, bcarr)
%BC Summary of this function goes here
%   Detailed explanation goes here
n = size(KK,1);
ff = zeros(n, 1);
for i=1:n
    if bcarr(i,1) == 1
        for j=1:n
            KK(i,j) = 0;
        end
        KK(i,i) = 1;
        ff(i) = bcarr(i,2);
    end
end

end

