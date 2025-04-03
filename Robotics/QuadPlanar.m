classdef QuadPlanar
    %QUADPLANAR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        g
        A
        B
        m
        I

        controller

        u0
        x0
    end
    
    methods
        function obj = QuadPlanar(m, I, Q, R)
            %QUADPLANAR Construct an instance of this class
            %   Detailed explanation goes here
            obj.m = m;
            obj.I = I;
            obj.g = 9.8;

            obj.A = [zeros(1,3),1,0,0;zeros(1,4),1,0;zeros(1,5),1;zeros(1,2),-9.8,zeros(1,3);zeros(2,6)];
            %obj.A = [zeros(3),eye(3);zeros(2),[-9.8*cos(theta);-9.8*sin(theta)],zeros(2,3);zeros(1,6)];
            obj.B = [zeros(4,2);1/m,0;0,1/I];
            %obj.B = [zeros(3,2);-sin(theta)/m,0;cos(theta)/m,0;0,1/I];

            obj.controller = ControllerLQR(obj.A, obj.B, diag(Q), diag(R), zeros(6,1), [m*9.8;0]);
        end
        
        function state_dot = dynamics(obj, state, input)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            u1 = input(1); u2 = input(2);
            theta = state(3);
            state_dot = [state(4:6);-u1/obj.m*sin(theta);u1/obj.m*cos(theta)-obj.g; u2/obj.I];
        end


        function [t, Y, U] = simulate(obj, x0, tspan)
            [t, Y, U] = simulate_dyn(@obj.dynamics, obj.controller, x0, tspan);
        end
    end
end

