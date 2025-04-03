% beta = 0.1;
gamma = 0.2;
Q = 0.6;
M = linspace(0,10,51);
f = [1 2 3 4 5];
n = size(f,2);
eff = zeros(n,51);
for i = 1:51
    for j = 1:n
        eff(j,i) = sum(fsolve(@(x) solve(x,M(i),f(j),Q,gamma,50), zeros(1,50))/50);
    end
end
% 
plot(M,eff,'LineWidth',1.4);
xlabel("Thermogeometric parameter, M")
ylabel("Fin efficiency, η")
legend({'β=0','β=1','β=2','β=3','β=4'})

