function F = solve(theta,M,beta,Q,gamma,nn, n)
F = zeros(1,n);
delx = 1/n;

F(1) = (1 + beta*theta(2))*(theta(2)-theta(1))/delx ...
     - (1 + beta*1)*(theta(1)-1)/delx ...
     + M^2*delx*(-theta(1)^(nn+1) + Q*gamma*theta(1) + Q);
for i = 2:n-1
    F(i) = ()
end
F(n) = - (1 + beta*theta(n-1))*(theta(n)-theta(n-1))/(2*delx) ...
       + M^2*delx*(-theta(n)^(nn+1) + Q*gamma*theta(n) + Q);
end