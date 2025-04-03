[t, X] = ode45(@system, linspace(0,3,1000), [0;0;0]);
y = [1 0 0]*X';
plot(t,y,"LineWidth",1.3);
xlabel("Time (seconds)")
ylabel("\theta_o(t)")
yline(1.15,'--','15% overshoot line')
yline(1.02,'--','2% setting time')
yline(0.98,'--')
line([2 2],[0 .98],'LineStyle','--', 'Color','black','LineWidth',.5)
    
function X = system(t,x)
    X = [0,1,0;0,0,1;-299.39,-94.969,-24]*x + [0;0;299.39]*1;
end
