function [mov] = animate_3d(t,y,u)
%ANIMATE_3D Summary of this function goes here
%   Detailed explanation goes here
xx = y(:,1); yy = y(:,2); zz = y(:,3); n = size(y,1);
l = 1.8; e = .4;
frame_color = 'cyan';
frame_d = 2;
axis_limit = 10;

for i=1:n
    clf
    %view(3)
    R = eul2rotm([y(i,6),y(i,5),y(i,4)], "ZYX");

    v=transpose(R*[0;0;1]);
    a =sum(v.^2);
    va = v./a;

    frame_x = R*[xx(i)-l,xx(i)+l;yy(i),yy(i);zz(i),zz(i)];
    frame_y = R*[xx(i),xx(i);yy(i)-l,yy(i)+l;zz(i),zz(i)];
    motor_x = R*[xx(i)-l-e,xx(i)+l+e;yy(i),yy(i);zz(i),zz(i)];
    motor_y = R*[xx(i),xx(i);yy(i)-l-e,yy(i)+l+e;zz(i),zz(i)];



    % blades of quadrotor
    p = plotCircle3D(motor_x(:,2)', va, e);
    fill3(p(1,:),p(2,:),p(3,:),'r-');
    hold on
    p = plotCircle3D(motor_y(:,2)', va, e);
    fill3(p(1,:),p(2,:),p(3,:),'r-');
    p = plotCircle3D(motor_y(:,1)', va, e);
    fill3(p(1,:),p(2,:),p(3,:),'r-');
    p = plotCircle3D(motor_x(:,1)', va, e);
    fill3(p(1,:),p(2,:),p(3,:),'r-');
    % frame of quadrotor
    line(frame_x(1,:),frame_x(2,:),frame_x(3,:), 'LineWidth', frame_d, 'Color', frame_color);
    line(frame_y(1,:),frame_y(2,:),frame_y(3,:),'LineWidth', frame_d, 'Color', frame_color);
    
    % center
    line([0 0], [0 0], [-.5 .5], 'Color', 'black')
    line([-.5 .5], [0 0], [0 0], 'Color', 'black')

    grid
    axis([-axis_limit axis_limit -axis_limit axis_limit -axis_limit axis_limit])

    mov(i) = getframe;
end
hold off

end

