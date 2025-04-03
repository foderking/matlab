clear;

fps = 20;
duration = 5;
ic = [rand(3,1)*5;rand(3,1);zeros(6,1)];
ic'

q = Quadrotor(diag([1;1;1;1;1;1;1;1;1;1;1;1]), diag([1;1;1;1]));
[t,y,u] = simulate_dyn(@q.dynamics, q.controller, ic, linspace(0,duration,duration*fps));

mov = animate_3d(t,y,u);