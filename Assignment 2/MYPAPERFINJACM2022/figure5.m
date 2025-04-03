
ha = [0.0 0.3 0.6 0.9];
n = size(m,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,51) = 1;
    theta(i,1:50) = fsolve(@(x) solve(x,1,0,0,1,0,ha(i),50), zeros(1,50));
end
X = linspace(0,1,51);

plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Ha=0.0','Ha=0.3','Ha=0.6','Ha=0.9'})