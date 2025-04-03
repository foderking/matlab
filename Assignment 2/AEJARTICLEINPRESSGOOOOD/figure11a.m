
X = linspace(0,1,51);
y1 = [1 fsolve(@(x) solve(x,1,0,0,0,50), zeros(1,50))];
y2 = cosh(X)/cosh(1);

plot(X,y1,X,flip(y2),'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Exact solution','Finite difference method'})