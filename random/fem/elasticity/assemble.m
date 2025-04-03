function [K] = assemble(KK, k, gg)
%ASSEMBLE Summary of this function goes here
%   Detailed explanation goes here
    K = KK;
    K(gg,gg) =  KK(gg,gg) +  k;
end

