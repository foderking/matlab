stress = [0,229,318,343,360,373];
strain = [0,0.0007,0.0012,0.0017,0.0022,0.0027];

a = flip(polyfit(strain,stress,2));

x = linspace(min(strain),max(strain));
y = a(1) + a(2)*x + a(3)*x.^2;
hold on
plot(strain,stress,'o','DisplayName','actual value')
plot(x,y,'DisplayName','actual value')
hold off
legend show
xlabel("strain (mm/mm)")
ylabel("stress (MPa)")
title("stress-strain curve showing actual data and 2nd order polynomial estimate")