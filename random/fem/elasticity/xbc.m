function [K] = xbc(KK,d_bc)
%XBC Enforces displacement boundary conditions on global matrix
%   Detailed explanation goes here
    K = KK;
    for i=d_bc
        K(i,:) = 0;
        K(i,i) = 1;
    end
end

