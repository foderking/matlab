
q = [0 0.1 0.2 0.3 0.4];
theta = zeros(5,51);
for i = 1:5
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x,2,0.5,q(i),0.2,50), zeros(1,50));
end
X = linspace(0,1,51);
plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Q=0.0','Q=0.1','Q=0.2','Q=0.3','Q=0.4'})