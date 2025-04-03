classdef ControllerPID
    %CONTROLLERPID Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        K
        xref
        uref
        shape
        last_error
        error_sum
    end
    
    methods
        function obj = ControllerPID(n, shape, xref, uref)
            %CONTROLLERPID Construct an instance of this class
            %   Detailed explanation goes here
            obj.K = zeros(n,3);
            obj.last_error = zeros(n,1);
            obj.error_sum = zeros(n,1);
            obj.shape = shape;
            obj.xref = xref;
            obj.uref = uref;
        end
        
        function s = setK(obj,i, k)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            obj.K(i,:) = k;
            s = obj.K;
        end

        function u = control(obj, x)
            err = obj.xref - obj.shape*x;
            u = obj.uref + obj.K(:,1) .* err; %+ obj.K(:,2) * obj.error_sum + obj.K(:,3) * ()
        end
    end
end

