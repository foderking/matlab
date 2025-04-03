clear;
config = Configuration().createConfigThree().setK(20);
[K_g, K_pot, K_m, a_m] = open_loop_params(config);

K = 20;
G = tf(K_pot*config.K1*K_m*K_g,[1 config.a+a_m config.a*a_m 0])
T = feedback(G*K,1)
p = [-2-3.312i;-2+3.312i;-20]
[A,B,C,D] = ssdata(T)
Kc = place(A,B,p)
T2 = tf(ss(A-B*Kc,B,C,D))
[n2 d2] = tfdata(T2,'v');
