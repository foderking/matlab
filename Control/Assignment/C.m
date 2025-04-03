n1=[0                         0                         0          2682848.13766964];
d1 = [1                    406.52                     38478          2682848.13766964];

n2 = [0                         0              22111.920372          4156524.95493613];
d2 = [1                    406.52              60589.920372          4156524.95493613];


T1 = tf(n1,d1);
T2 = tf(n2,d2);

t = linspace(0,0.14,1000);
y1 = step(T1, t);
y2 = step(T2, t);

plot(t,y1,t,y2)
yline(1.15,'--','15% overshoot line')
yline(1.05,'--','5% overshoot line')
legend("Uncompensated system","Compensated system")
xlabel("Time (seconds)")
ylabel("\theta_o (radians)")

title("Antenna Azimuth Position Control System Step Response before and after compensation")
