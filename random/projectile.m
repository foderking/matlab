function [v] = projectile(m,c,v0,p,theta,t)
%PROJECTILE Summary of this function goes here
%   Detailed explanation goes here
g =  9.8;
x0 = v0*cos(theta);
y0 = v0*sin(theta);

[z, x] = ode45(@(t, x) ([x(2);-c/m*x(2)]),t,[p(1);x0]);
[z, y] = ode45(@(t, y) ([y(2);-g-c/m*y(2)]),t,[p(2);y0]);

v = sqrt(x.^2 + y.^2);
end

