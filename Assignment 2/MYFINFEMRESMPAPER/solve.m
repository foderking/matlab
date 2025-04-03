function theta = solve(density,cp,A,Le,k,stress,br,h,P,e,Tinf,st_m,Bo,u)
C = [8,4,-2;4,32,4;-2,4,8]*density*cp*A*Le/6;
K = [7,-8,1;-8,16,-8;1,-8,7]*(k+16*stress/3/br)*A/3/Le + ...
    [8,4,-2;4,32,4;-2,4,8]/60*Le*(h*P+4*stress*e*Tinf*P+st_m*Bo^2*u^2);
F  = []
theta = [1];
end