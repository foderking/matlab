
M = [0.5 1 1.5 2.0];
n = size(M,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x,M(i),0.2,0.3,0.5,50), zeros(1,50));
end
X = linspace(0,1,51);

plot(X,theta,'LineWidth',1.5);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'M=0.5','M=1.0','M=1.5','M=2.0'})