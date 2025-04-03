bi = linspace(0,0.1,100);
a = linspace(10,40,4);
M = zeros(4,100);

for i = 1:4
M(i,:) = a(i)*sqrt(2*bi);
end
plot(bi,M,'LineWidth',1.4);