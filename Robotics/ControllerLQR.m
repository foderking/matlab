classdef ControllerLQR
    %LQR Basic LQR controller
    %   Detailed explanation goes here
    
    properties
        K
        xref
        uref
    end
    
    methods
        function obj = ControllerLQR(A, B, Q, R, xref, uref)
            %LQR Construct an LQR controller
            %   A, B = state space linearised about xref and uref respectively
            %   Q, R = cost functions
            obj.K = lqr(A,B,Q,R);
            obj.xref = xref;
            obj.uref = uref;
        end
        
        function u = control(obj, x)
            %METHOD1 Calculate required input for desired state
            %   x = full state
            %   u = required input
            u  = obj.uref - obj.K*(x-obj.xref); 
        end
    end
end

