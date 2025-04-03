function [K] = tri1(E,v,elem_coords)
%TRI1 Generates stiffness matrix for plain strain triangle
%   Detailed explanation goes here
integ_points = [1/3,1/3,1/2];

K = zeros(6);

shape_der = @(e, n) ([
   %L1,L3,L2
    1,-1,0; %L1
    0,-1,1  %L2
]);

for i = 1:size(integ_points,1)
    ei = integ_points(i,1);
    ni = integ_points(i,2);
    wi = integ_points(i,3);

    dNden = shape_der(ei,ni);
    J = dNden*elem_coords;
    detJ = det(J);
    dNdxy = J \ dNden;

    bdb = btdb(dNdxy,E,v);

    K = K + detJ*bdb*wi;
end

end

