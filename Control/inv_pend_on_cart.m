syms theta(t) x(t) m M l g u(t) c
% equation of motion
x_dot = diff(x,t);
theta_dot = diff(theta,t);

y_p = l*cos(theta);
x_p = x-l*sin(theta);

U = m*g*y_p;
R = 1/2*c*x_dot^2;
T = 1/2*M*x_dot^2 + 1/2*m*(diff(x_p,t)^2 + diff(y_p,t)^2);

L = simplify(T-U-R);

dLdx = diff(L,x);
dLdx_dot = diff(L,x_dot);
x_dot_dot = diff(dLdx_dot,t) - dLdx - u;

dLdtheta = diff(L,theta);
dLdtheta_dot = diff(L, theta_dot);
theta_dot_dot = diff(dLdtheta_dot,t) - dLdtheta;

% X = [x;x_dot;theta;theta_dot];
% f = [x_dot;x_dot_dot;theta_dot;theta_dot_dot];
factor(x_dot_dot)
% integrator = @(xx,mm,MM,ll,gg,uu) ([ ...
%     xx(2);
%     x_dot_dot.subs([m,M,l,g,u],[mm,MM,ll,gg,uu]);
%     xx(4);
%     0;
%     ]);
    