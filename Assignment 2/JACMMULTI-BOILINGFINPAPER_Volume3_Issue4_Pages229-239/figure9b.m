

X = linspace(0,1,51);
M = 1.5; Q = 0.8;
Y = flip(cosh(M*X)./cosh(M) + Q*(1 - cosh(M*X)./cosh(M)));
Y2 = fsolve(@(x) solve(x, M,0,Q,1.18,0,50), zeros(1,50));
plot(X,Y,X,[1 Y2],'LineWidth',1.4);