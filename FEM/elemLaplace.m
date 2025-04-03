function [K] = elemLaplace(x1,x2,x3,y1,y2,y3)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A = 0.5*(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2);
K(1,1) = (x2 - x3)^2 + (y2 - y3)^2;
K(1,2) = -(x1 - x3)*(x2 - x3) - (y1 - y3)*(y2 - y3);
K(1,3) = (x1 - x2)*(x2 - x3) + (y1 - y2)*(y2 - y3);
K(2,1) = -(x1 - x3)*(x2 - x3) - (y1 - y3)*(y2 - y3);
K(2,2) = (x1 - x3)^2 + (y1 - y3)^2;
K(2,3) = -(x1 - x2)*(x1 - x3) - (y1 - y2)*(y1 - y3);
K(3,1) = (x1 - x2)*(x2 - x3) + (y1 - y2)*(y2 - y3);
K(3,2) = -(x1 - x2)*(x1 - x3) - (y1 - y2)*(y1 - y3);
K(3,3) = (x1 - x2)^2 + (y1 - y2)^2;

K = K/(4*A);
end