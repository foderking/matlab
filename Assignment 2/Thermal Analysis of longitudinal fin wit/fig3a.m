X = linspace(0,1,20);
n = 1;
M = [1 2 3 4]; beta = 1; Q = 0.8; gamma = 0.1;
z = size(M,2);
y = zeros(20, z);
for i = 1:z
    y(:,i) = solve(X,0,beta,M(i),gamma,Q);
end
plot(X,y,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'M=1','M=2','M=3','M=4'})