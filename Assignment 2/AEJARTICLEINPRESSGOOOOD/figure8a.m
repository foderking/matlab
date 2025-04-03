a = linspace(0,50,100);
bi = linspace(0.02,0.08,4);
M = zeros(4,100);

for i = 1:4
M(i,:) = a*sqrt(2*bi(i));
end
plot(a,M,'LineWidth',1.4);

xlabel("Aspect ratio, a")
ylabel("Thermogeometric parameter, M")
legend({'Bi=0.02','Bi=0.04','Bi=0.06','Bi=0.08'})