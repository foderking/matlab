OS = 15; % percent overshoot
zeta = sqrt(log(OS/100)^2/(log(OS/100)^2+pi^2)); % damping ratio

G = tf(190.99,[1, 152.52, 378, 0]); 

rlocus(G,linspace(4,5,1000)) % plots the root locus
sgrid(zeta,0)
pause
[K,p] = rlocfind(G);