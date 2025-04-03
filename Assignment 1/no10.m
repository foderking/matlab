stress = [7.1,9.7,11.8,14.4,16.7,19.0,20.7,19.7,18.5];
strain = [0.265,0.4,0.5,0.7,0.95,1.36,2.08,2.45,2.94];

a = 30.151;
b = 0.53834;

x = linspace(min(strain),max(strain));
y = a*x.*exp(-b*x);
hold on
plot(x,y,'DisplayName','estimated value')
plot(strain,stress,'o','DisplayName','actual value')
hold off
legend show
xlabel("strain")
ylabel("stress")
title("stress-strain distribution for concrete columns")