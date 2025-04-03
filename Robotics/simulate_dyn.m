function [t, Y, U] = simulate_dyn(dynamics, controller, x0, tspan)
%SIMULATE Summary of this function goes here
%   Detailed explanation goes here
    %[t, Y] = ode15s(@(t,x) (dynamics(x, lqr_controller(K,x,xref,uref))), tspan, x0);
    %ode15s(@(t,x) (dynamics(x, lqr_controller(K,x,xref,uref))), tspan, x0);
    [t, Y] = ode15s(@(t, x) (dynamics(x, controller.control(x))), tspan, x0);
    U = controller.K * Y';
end

