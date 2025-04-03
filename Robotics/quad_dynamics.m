function [state_dot] = quad_dynamics(state, input, quad)
%QUAD_DYNAMICS Nonlinear equation of motion for dynamics of 3D quadrotor
%   Detailed explanation goes here
%   state = [x, y, z, phi, theta, psi, x_dot, y_dot, z_dot p, q, r].
g = quad.g; m = quad.m; II = quad.I;
F = input(1); phi = state(4); theta = state(5); 
R = eul2rotm(flip(state(4:6)'), "ZYX");
M = input(2:4);
pqr = state(10:12);

r_dot  = state(7:9);
r_ddot = [0;0;-g] + R*[0;0;F/m];
ang_dot = [1,sin(phi)*tan(theta),cos(phi)*tan(theta);0,cos(phi),-sin(phi);0,sin(phi)/cos(theta),cos(phi)/cos(theta)]*pqr;
pqr_dot = II \ (M + cross(II*pqr,-pqr));

state_dot  = [r_dot;ang_dot;r_ddot;pqr_dot];
end