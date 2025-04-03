classdef Configuration
    %CONFIGURATION configuration class for the Antenna Azimuth Position Control System
    properties
        V  % output voltage of potentiometer
        n  % number of turns of potentiometer
        K  % differential amplifier gain
        K1 % power amplifier gain
        a  % power amplifier pole
        Ra % armature resistance
        Ja % armature moment of inertia
        Da % armature coefficient of viscous friction
        Kb % back emf constant
        Kt % motor torque constant
        N1 % motor gear turns
        N2 % antenna gear turns
        N3 % output potentiometer gear turns
        JL % load moment of inertia
        DL % load coefficient of viscous friction

    end
    
    methods
        function obj = Configuration()
            %CONFIGURATION Constructs a configuration instance without parameters
        end

        function obj = createConfigOne(obj)
            %CONFIGURATION creates configuration 1
            obj.V  = 10;
            obj.n  = 10;
            %obj.K  =
            obj.K1 = 100;
            obj.a  = 100;
            obj.Ra = 8;
            obj.Ja = 0.02;
            obj.Da = 0.01;
            obj.Kb = 0.5;
            obj.Kt = 0.5;
            obj.N1 = 25;
            obj.N2 = 250;
            obj.N3 = 250;
            obj.JL = 1;
            obj.DL = 1;
        end
        function obj = createConfigTwo(obj)
            %CONFIGURATION creates configuration 2
            obj.V  = 10;
            obj.n  = 1;
            %obj.K  =
            obj.K1 = 150;
            obj.a  = 150;
            obj.Ra = 5;
            obj.Ja = 0.05;
            obj.Da = 0.01;
            obj.Kb = 1;
            obj.Kt = 1;
            obj.N1 = 50;
            obj.N2 = 250;
            obj.N3 = 250;
            obj.JL = 5;
            obj.DL = 3;
        end       

        function obj = createConfigThree(obj)
            %CONFIGURATION creates configuration 3
            obj.V  = 10;
            obj.n  = 1;
            %obj.K  =
            obj.K1 = 100;
            obj.a  = 100;
            obj.Ra = 5;
            obj.Ja = 0.05;
            obj.Da = 0.01;
            obj.Kb = 1;
            obj.Kt = 1;
            obj.N1 = 50;
            obj.N2 = 250;
            obj.N3 = 250;
            obj.JL = 5;
            obj.DL = 3;
        end       

        function obj = setRa(obj,Ra)
            obj.Ra = Ra;
        end

        function obj = setKt(obj,Kt)
            obj.Kt = Kt;
            obj.Kb = Kt;
        end

        function obj = setK(obj,K)
            obj.K = K;
        end

    end
end

