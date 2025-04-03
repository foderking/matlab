
m = [1/6 1/4 1/3 1/2]*pi;
n = size(m,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,51) = 1;
    theta(i,1:50) = fsolve(@(x) solve(x,1,m(i),0,1,0,0,50), zeros(1,50));
end
X = linspace(0,1,51);

plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'M=0.5','M=1.0','M=1.5','M=2.0'})