%clear;
%config = Configuration().createConfigOne();
%
%K_g = config.N1/config.N2;
%K_pot = config.V / (pi*config.n);
%J_m = config.Ja + config.JL*K_g^2;
%D_m = config.Da + config.DL*K_g^2;
%K_m = config.Kt / (config.Ra*J_m);
%a_m = (D_m + config.Kt*config.Kb/config.Ra) / J_m;
%partA


PowerAmp = tf(config.K1,[1 config.a])
Motor = tf(K_m,[1 a_m 0])
Gear = K_g
T = feedback(K_pot*PowerAmp*Motor*K_g,1)