%q = QuadPlanar(.03,1.4194e-05,[70;1;1;70;1;1000],[1;1000],[0;0;0;0;0;0]);
%ic = [1;2;pi/4;0;0;0]%[rand(1,1)*5;rand(2,1)*3;0;0;0]
%[t,y,u]=q.simulate(ic,[1 10]);plot(t,y(:,1:3))

function [mov] = animate_2d(t,y,u)
xx = y(:,1); yy = y(:,2); th = y(:,3); n = size(y,1);
l = 1.8; c = .2; s = .3; e = .3;
motor_color = 'black';
motor_d = 9;
shaft_color = 'black';
shaft_d = 1;
blade_color = 'red';
blade_d = 2;
frame_color = 'cyan';
frame_d = 4;
axis_limit = 5;


for i=1:n
    clf
    %uu = u(:,i);
    %Ru = [1,1;-l,l];
    %F = Ru \ uu;

    R = [cos(th(i)),-sin(th(i));sin(th(i)),cos(th(i))];

    frame = R*[xx(i)-l,xx(i)+l;yy(i),yy(i)];
    l_motor = R*[xx(i)-l,xx(i)-l;yy(i),yy(i)+c];
    l_shaft = R*[xx(i)-l,xx(i)-l;yy(i),yy(i)+s];
    l_blade = R*[xx(i)-l-e,xx(i)-l+e;yy(i)+s,yy(i)+s];
    r_motor = R*[xx(i)+l,xx(i)+l;yy(i),yy(i)+c];
    r_shaft = R*[xx(i)+l,xx(i)+l;yy(i),yy(i)+s];
    r_blade = R*[xx(i)+l-e,xx(i)+l+e;yy(i)+s,yy(i)+s];

    line(frame(1,:)  , frame(2,:)  , 'LineWidth',frame_d,'Color',frame_color)
    line(l_motor(1,:), l_motor(2,:), 'LineWidth',motor_d,'Color',motor_color)
    line(l_shaft(1,:), l_shaft(2,:), 'LineWidth',shaft_d,'Color',shaft_color)
    line(l_blade(1,:), l_blade(2,:), 'LineWidth',blade_d,'Color',blade_color)
    line(r_motor(1,:), r_motor(2,:), 'LineWidth',motor_d,'Color',motor_color)
    line(r_shaft(1,:), r_shaft(2,:), 'LineWidth',shaft_d,'Color',shaft_color)
    line(r_blade(1,:), r_blade(2,:), 'LineWidth',blade_d,'Color',blade_color)

    line([-0.2 0.2], [0 0], 'LineWidth',1, 'Color','black')
    line([0 0], [-0.2 0.2], 'LineWidth',1, 'Color','black')

    %text(-4,-4,['u1: ',num2str(u(1,i))])
    %text(-4,-4.5,['u2: ',num2str(u(2,i))])
    %text(3,-4,['F1: ',num2str(F(1))])
    %text(3,-4.5,['F2: ',num2str(F(2))])
    text(0,-4.5,['time: ',num2str(t(i)), ' s'])

    grid
    axis([-axis_limit axis_limit -axis_limit axis_limit])
    mov(i) = getframe;
end