OS = 15; % percent overshoot
zeta = sqrt(log(OS/100)^2/(log(OS/100)^2+pi^2)); % damping ratio

G = tf(6111.5,[1, 406.52,38478, 0]); % open loop transfer function
rlocus(G) % plots the root locus
sgrid(zeta,0)
pause
[K,p] = rlocfind(G); % finds the gain and pole at the point the user clicked