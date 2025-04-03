function [KK, FF] = bound(KK,FF,bounds)
%BOUND Summary of this function goes here
%   Detailed explanation goes here
n = size(KK,1);
for i=1:n
    if bounds(i,1) == 1
        KK(i,:) = 0;
        KK(i,i) = 1;
        FF(i) = bounds(i,2);
    end
end

end

