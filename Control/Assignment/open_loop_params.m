function [K_g, K_pot, K_m, a_m] = open_loop_params(config)
%OPEN_LOOP_PARAMS Summary of this function goes here
%   Detailed explanation goes here
K_g = config.N1/config.N2;
K_pot = config.V / (pi*config.n);

J_m = config.Ja + config.JL*K_g^2;
D_m = config.Da + config.DL*K_g^2;

K_m = config.Kt / (config.Ra*J_m);
a_m = (D_m + config.Kt*config.Kb/config.Ra) / J_m;
end

