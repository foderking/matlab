
sh = [0.0 1.0 2.0 3.0];
n = size(m,2);
theta = zeros(n,51);
for i = 1:n
    theta(i,51) = 1;
    theta(i,1:50) = fsolve(@(x) solve(x,sh(i),pi/2,0,1,nc(i),0,50), zeros(1,50));
end
X = linspace(0,1,51);

plot(X,theta,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Sh=0.0','Sh=1.0','Sh=2.0','Sh=3.0'})