X = linspace(0,1,20);
n = 1;
M = 2; beta = 1; Q = [0 0.1 0.2 0.3 0.4]; gamma = 0.1;
z = size(Q,2);
y = zeros(20, z);
for i = 1:z
    y(:,i) = solve(X,0,beta,M,gamma,Q(i));
end
plot(X,y,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'Q=0','Q=0.1','Q=0.2','Q=0.3','Q=0.4'})