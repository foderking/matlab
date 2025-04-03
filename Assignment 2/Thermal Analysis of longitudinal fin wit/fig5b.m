X = linspace(0,1,20);
n = 1;
M = 2; beta = 0.5; Q = 0.2; gamma = [0.1 0.3 0.5 0.7 0.9];
z = size(gamma,2);
y = zeros(20, z);
for i = 1:z
    y(:,i) = solve(X,0,beta,M,gamma(i)   ,Q);
end
plot(X,y,'LineWidth',1.4);
xlabel("Dimensionless length, X")
ylabel("Dimensionless temperature θ")
legend({'γ=0.1','γ=0.3','γ=0.5','γ=0.7','γ=0.9'})