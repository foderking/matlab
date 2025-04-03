P = [81,78,72,67,64,56,51];
Q = [387,349,310,272,231,192,153];

a = flip(polyfit(P,Q,1));
x = linspace(min(P),max(P));
y = a(1) + a(2)*x;
hold on
plot(P,Q,'o','DisplayName','actual value')
plot(x,y,'DisplayName','actual value')
hold off
legend show
xlabel("Q (m^3/h)")
ylabel("P (kW)")
title("P-Q curve showing actual data and 1st order estimate")