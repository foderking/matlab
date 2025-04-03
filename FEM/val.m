function [Y] = val(x,y,x1,x2,x3,y1,y2,y3,T)

%VAL Summary of this function goes here
%   Detailed explanation goes here

N = [ x*(y2 - y3)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2) + y*(-x2 + x3)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2) + (x2*y3 - x3*y2)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2)
   x*(-y1 + y3)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2) + y*(x1 - x3)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2) + (-x1*y3 + x3*y1)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2)
   x*(y1 - y2)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2) + y*(-x1 + x2)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2) + (x1*y2 - x2*y1)/(x1*y2 - x1*y3 - x2*y1 + x2*y3 + x3*y1 - x3*y2)]';
Y = N*T;
end

