function [F] = fbc(n,f_bc)
%FBC Enforce force boundary condition
%   Detailed explanation goes here
F = zeros(n,1);
F(f_bc(:,1)) = f_bc(:,2);
end

