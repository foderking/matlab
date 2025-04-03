clear;
config = Configuration().createConfigTwo().setRa(2).setKt(1);
[K_g, K_pot, K_m, a_m] = open_loop_params(config);

z = os2z(15);
G = tf(K_pot*config.K1*K_m*K_g,[1 config.a+a_m config.a*a_m 0]);
K=4.52389;
t_t=4;