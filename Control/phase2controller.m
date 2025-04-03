function [AA,BB,CC,DD] = phase2controller(A,B,C,D)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n = size(A,1);
P = zeros(n,n);
for i=1:n
    j = n-i+1;
    P(i,j) = 1;
end
AA = P \ A * P;
BB = P \ B;
CC = C * P;
DD = D;
end