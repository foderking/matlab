strain = [0.15,0.52,0.76,1.01,1.12,1.42,1.52,1.66,1.86,2.08,2.27,2.56,2.86,3.19];
stress = [57.7,123.5,191.8,236,267.7,309.1,354,383,423,465.8,497.5,530.6,576.2,613.4];

a = [5.2352       258.77      -20.602];
x = linspace(min(strain),max(strain));
y = a(1) + a(2)*x + a(3)*x.^2;
hold on 
plot(strain,stress,'o','DisplayName','actual value')
plot(x,y,'DisplayName','estimate value')
hold off
legend show
xlabel("strain")
ylabel("stress (MPa)")
title("stress-strain curve for actual data and 2nd order polynomial estimate")