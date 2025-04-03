
beta = [0,0.2,0.6,0.8,1];
theta = zeros(5,51);
for i = 1:5
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x,2,beta(i),0.3,0.6,50), zeros(1,50));
end
X = linspace(0,1,51);
plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'β=0.0','β=0.2','β=0.6','β=0.8','β=1.0'})