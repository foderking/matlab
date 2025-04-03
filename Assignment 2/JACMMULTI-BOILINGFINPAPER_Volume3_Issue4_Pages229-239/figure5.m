f = [0.3 0.5 0.7];
n = size(f,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x, 2,0.2,f(i),0.2,0,50), zeros(1,50));
end
X = linspace(0,1,51);
plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Q=0.3','Q=0.5','Q=0.7'})