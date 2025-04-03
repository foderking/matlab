
nc = [0.0 1.0 1.5 2.0];
n = size(m,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,51) = 1;
    theta(i,1:50) = fsolve(@(x) solve(x,1,0,0,1,nc(i),0,50), zeros(1,50));
end
X = linspace(0,1,51);

plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Nr=0.0','Nr=1.0','Nr=1.5','Nr=2.0'})