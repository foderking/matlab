T = [-100,0,100,200,300,400];
k = [215,202,206,215,228,249];

a_1 = [208.15     0.073429];
a_2 = [205.7    -0.036929   0.00036786];
a_3 = [203.83    -0.044484   0.00056786  -4.4444e-07];

x = linspace(min(T),max(T));
y1 = a_1(1) + a_1(2)*x;
y2 = a_2(1) + a_2(2)*x + a_2(3)*x.^2;
y3 = a_3(1) + a_3(2)*x + a_3(3)*x.^2 + a_3(4)*x.^3;
hold on
plot(T,k,'o','DisplayName','actual value')
plot(x,y1,'DisplayName','first order estimate')
plot(x,y2,'DisplayName','second order estimate')
plot(x,y3,'DisplayName','third order estimate')
hold off
legend show
xlabel("Thermal coefficient (k)")
ylabel("Temperature (T)")
title("comparison of 1st, 2nd, and 3rd order polynomial approximations of experimental data")