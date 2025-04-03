T = [700,1200,1700,2200,2700];
c = [1.1427,1.2059,1.2522,1.2815,1.2938];
a = [1.0256   0.00019097  -3.3943e-08];

x = linspace(min(T),max(T));
y = a(1) + a(2)*x + a(3)*x.^2;
hold on
plot(T,c,'o','DisplayName','actual value')
plot(x,y,'DisplayName','estimated value')
hold off
legend show
xlabel("Temperature (°C)")
ylabel("Specific heat (kJ/kg°C)")
title("Comparision of estimated and actual value for air specific heat")