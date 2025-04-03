X = linspace(0,1,20);
n = [0 1];
M = 1; beta = 1; Q = 0.8; gamma = 0.3;

y = [solve(X,0,beta,M,gamma,Q)' solve(X,1,beta,M,gamma,Q)'];
plot(X,y,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'n=0','n=1'})