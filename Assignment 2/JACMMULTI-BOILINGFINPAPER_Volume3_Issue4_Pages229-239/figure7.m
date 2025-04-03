beta = 0.1;
gamma = 0.8;
% Q = 0.6;
M = linspace(0,10,51);
f = [0 0.1 0.3];
n = size(f,2);
eff = zeros(n,51);
for i = 1:51
    for j = 1:n
        eff(j,i) = sum(fsolve(@(x) solve(x,M(i),beta,f(j),gamma,0,50), zeros(1,50))/50);
    end
end
% 
plot(M,eff,'LineWidth',1.4);

xlabel("Thermogeometric parameter, M")
ylabel("Fin efficiency, η")
