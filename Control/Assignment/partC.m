clear;
config = Configuration().createConfigTwo().setRa(0.25).setKt(4);
[K_g, K_pot, K_m, a_m] = open_loop_params(config);
K = 438.98;
p = -96.116+100.79i;
G = tf(K_pot*config.K1*K_m*K_g,[1 config.a+a_m config.a*a_m 0]);
theta = -pi-openloopangle(G*K,p);
z = imag(p)/tan(theta)+abs(real(p));
Kc = openloopabs(G*K*tf([1 z], 1),p);
C = tf([1 z], 1)*Kc;

Gc = G*K*C;