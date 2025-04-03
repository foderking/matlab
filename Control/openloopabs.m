function [K] = openloopabs(G,s)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[z, p, k] = zpkdata(G,'v') ;
K = prod(abs(s-p))/prod(abs(s-z))/k;
end