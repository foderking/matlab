partA

out = sim('simulink/closed_loop',t_t);

y1 = out.y.Data;
t = out.y.Time;

y2 = 1 - 0.00026*exp(-150*t) - 0.9997*exp(-1.2405*t).*(cos(2.0543*t) + 0.622866*sin(2.0543*t));

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