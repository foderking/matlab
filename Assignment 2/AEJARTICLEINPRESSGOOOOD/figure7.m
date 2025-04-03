beta = 0.1;
gamma = 0.8;
M = linspace(0,10,51);
Q = [0 0.1 0.3];
n = size(Q,2);
eff = zeros(n,51);
for i = 1:51
    for j = 1:n
        eff(j,i) = sum(fsolve(@(x) solve(x,M(i),beta,Q(j),gamma,50), zeros(1,50))/50);
    end
end
plot(M,eff,'LineWidth',1.4);
xlabel("Thermogeometric parameter, M")
ylabel("Fin efficiency, η")
legend({'Q=0.0','Q=0.1','Q=0.3'})
