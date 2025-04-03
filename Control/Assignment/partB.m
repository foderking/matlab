clear;
config = Configuration().createConfigTwo().setRa(0.25).setKt(4);
[K_g, K_pot, K_m, a_m] = open_loop_params(config);

z = os2z(15);
G = tf(K_pot*config.K1*K_m*K_g,[1 config.a+a_m config.a*a_m 0]);
K=438.98;
t = linspace(0,0.1,1000);
y = 1-0.114998*exp(-310.4*t) - 0.885*exp(-48.06*t).*( cos(79.5816*t) + 1.11071*sin(79.5816*t) );
t_t = 0.1;