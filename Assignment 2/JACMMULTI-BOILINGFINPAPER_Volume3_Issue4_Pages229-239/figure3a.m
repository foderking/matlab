f = [1/4 1/3 2 3];
n = size(f,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x,1,1,0.8,0.5,f(i),50), ones(1,50));
end
X = linspace(0,1,51);
plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'n=1/4','n=1/3','n=2','n=3'})