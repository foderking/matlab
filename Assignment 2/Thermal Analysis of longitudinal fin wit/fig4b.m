X = linspace(0,1,20);
n = 1;
M = 2; beta = [1 2 3 4 5]; Q = 0; gamma = 0.6;
z = size(beta,2);
y = zeros(20, z);
for i = 1:z
    y(:,i) = solve(X,0,beta(i),M,gamma,Q);
end
plot(X,y,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'β=1','β=2','β=3','β=4','β=5'})