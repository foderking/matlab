
f = linspace(1,5,5);
n = size(f,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,1) = 1;
    theta(i,2:51) = fsolve(@(x) solve(x,f(i),1,0,0,50), zeros(1,50));
end
X = linspace(0,1,51);
plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'M=1.0','M=2.0','M=3.0','M=4.0'})