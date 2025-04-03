function [bdb] = btdb(dNdxy,E,v)
%BTDB Summary of this function goes here
%   Detailed explanation goes here


n = size(dNdxy,2)*2;
B = zeros(3,n);
B(1,1:2:n) = dNdxy(1,:);
B(3,2:2:n) = dNdxy(1,:);
B(2,2:2:n) = dNdxy(2,:);
B(3,1:2:n) = dNdxy(2,:);

D = E*(1-v)/(1+v)/(1-2*v)*[1,v/(1-v),0;v/(1-v),1,0;0,0,(1-2*v)/2*(1-v)];
%D = E/(1-v*v)*[1,v,0;v,1,0;0,0,(1-v)/2];


bdb = B'*D*B;
end

