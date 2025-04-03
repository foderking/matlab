function [u] = lqr_controller(K, x, xref, uref)
%LQR_CONTROLLER Summary of this function goes here
%   Detailed explanation goes here
    u  = uref - K*(x-xref); 
end

