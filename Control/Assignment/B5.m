partB

out = sim('simulink/closed_loop',t_t);


y1 = out.y.Data;
t = out.y.Time;

y2 = 1 - 0.114998*exp(-310.4*t) - 0.885*exp(-48.06*t).*(cos(79.5816*t) + 1.11071*sin(79.5816*t));
plot(t,y1,'r','LineStyle','-')
hold on
plot(t,y2,'b','LineStyle','--')
legend("Simulated","Analytical")
xlabel("Time (seconds)")
ylabel("\theta_o (radians)")
hold off
title("Antenna Azimuth Position Control System Step Response")

pause

Ea = out.Ea.Data;
tea = out.Ea.Time;
plot(tea,Ea)
xlabel("Time (seconds)")
ylabel("E_a (volts)")
title("Control signal input")