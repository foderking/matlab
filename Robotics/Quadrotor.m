classdef Quadrotor
    %QUADROTOR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
%        0         0         0         0         0         0    1.0000         0         0         0         0         0
%        0         0         0         0         0         0         0    1.0000         0         0         0         0
%        0         0         0         0         0         0         0         0    1.0000         0         0         0
%        0         0         0         0         0         0         0         0         0    1.0000         0         0
%        0         0         0         0         0         0         0         0         0         0    1.0000         0
%        0         0         0         0         0         0         0         0         0         0         0    1.0000
%        0         0         0         0   -9.8000         0         0         0         0         0         0         0
%        0         0         0    9.8000         0         0         0         0         0         0         0         0
%        0         0         0         0         0         0         0         0         0         0         0         0
%        0         0         0         0         0         0         0         0         0         0         0         0
%        0         0         0         0         0         0         0         0         0         0         0         0
%        0         0         0         0         0         0         0         0         0         0         0         0
%        ]
%        1.0e+04 *[
%        0         0         0         0
%        0         0         0         0
%        0         0         0         0
%        0         0         0         0
%        0         0         0         0
%        0         0         0         0
%        0         0         0         0
%        0         0         0         0
%   0.0033         0         0         0
%        0    7.0452         0         0
%        0         0    7.0977         0
%        0         0         0    3.3624
%        ]
        g = 9.8
        m = 0.03
        I = diag([1.4194e-05, 1.4089e-05,  2.9741e-05])
        A
        B
        controller
    end
    
    methods
        function obj = Quadrotor(Q,R)
            %QUADROTOR Construct an instance of this class
            %   Detailed explanation goes here
            %obj.K = lqr(obj.A,obj.B,Q,R);
            Ix = obj.I(1,1);
            Iy = obj.I(2,2);
            Iz = obj.I(3,3);
            obj.A = [
                0,0,0,0,0,0,1,0,0,0,0,0;0,0,0,0,0,0,0,1,0,0,0,0;
                0,0,0,0,0,0,0,0,1,0,0,0;0,0,0,0,0,0,0,0,0,1,0,0;
                0,0,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,1;
                0,0,0,0,obj.g,0,0,0,0,0,0,0;0,0,0,-obj.g,0,0,0,0,0,0,0,0;
                0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0;
                0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0];
            obj.B = [0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0;1/obj.m,0,0,0;0,1/Ix,0,0;0,0,1/Iy,0;0,0,0,1/Iz];
            obj.controller = ControllerLQR(obj.A, obj.B, Q, R, [0;0;0;zeros(9,1)], [9.8*0.03;0;0;0]);
        end
        
%        function u = controller(obj, x)
%            %METHOD1 Summary of this method goes here
%            %   Detailed explanation goes here
%            u  = obj.u0 - obj.K*(x-obj.x0); 
%        end

        function state_dot = dynamics(obj, x, u)
            state_dot = quad_dynamics(x,u,obj);
        end 
    end
end

