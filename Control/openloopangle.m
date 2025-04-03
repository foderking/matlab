function [theta] = openloopangle(G,s)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
p = pole(G);
z = zero(G);

theta = sum([angle(s-z);-angle(s-p)]);
end