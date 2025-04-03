
gamma = linspace(0.2,1,5);
n = size(gamma,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x,2,0.6,0.4,gamma(i),50), zeros(1,50));
end
X = linspace(0,1,51);
plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'γ=0.2','γ=0.4','γ=0.6','γ=0.8','γ=1.0'})