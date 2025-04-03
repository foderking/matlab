clear;
fps = 20;
duration = 5;
ic =[rand(2,1)*5;rand(1,1)*2;zeros(3,1)]
q = QuadPlanar(.03,1.4194e-05,[70;1;1;70;1;1000],[1;100]);
[t,y,u]=q.simulate(ic,linspace(0,duration,duration*fps));%plot(t,y(:,1:3));

mov = animate_2d(t,y,u);

%write = VideoWriter("2D-Quadrotor-3");
%write.FrameRate = 20;
%open(write)
%writeVideo(write,mov)
%close(write)

%xx = y(:,1); yy = y(:,2); th = y(:,3); n = size(y,1);
%l = 1.8; c = .2; s = .3; e = .2;
%motor_color = 'black';
%shaft_color = 'black';
%blade_color = 'red';
%frame_color = 'cyan';
%axis_limit = 5;
%
%for i=1:n
%    clf
%    line([xx(i)-l*cos(th(i)), xx(i)+l*cos(th(i))], [yy(i)+l*sin(th(i)), yy(i)-l*sin(th(i))], 'LineWidth',4,'Color',frame_color) % quadrotor frame
%
%    line([xx(i)-l*cos(th(i)), xx(i)-l*cos(th(i))+c*cos(pi/2-th(i))], [yy(i)+l*sin(th(i)), yy(i)+l*sin(th(i))+c*sin(pi/2-th(i))], 'LineWidth',9,'Color',motor_color) % left motor
%    line([xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))+e*cos(th(i)), xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))-e*cos(th(i))], [yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))-e*sin(th(i)), yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))+e*sin(th(i))], 'LineWidth',2,'Color', blade_color) % left motor blade
%    line([xx(i)-l*cos(th(i)), xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))], [yy(i)+l*sin(th(i)), yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))], 'LineWidth',1,'Color',shaft_color) % left motor shaft
%    %line([xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))-e*cos(th(i)), xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))], [yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))+e*sin(th(i)), yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))], 'LineWidth',2,'Color','green') % left motor shaft
%    %line([xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))+e*cos(th(i)), xx(i)-l*cos(th(i))+s*cos(pi/2-th(i))], [yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))-e*sin(th(i)), yy(i)+l*sin(th(i))+s*sin(pi/2-th(i))], 'LineWidth',2,'Color','green') % left motor shaft
%    line([xx(i)+l*cos(th(i)), xx(i)+l*cos(th(i))+c*cos(pi/2-th(i))], [yy(i)-l*sin(th(i)), yy(i)-l*sin(th(i))+c*sin(pi/2-th(i))], 'LineWidth',9,'Color',motor_color) % right motor
%    line([xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))-e*cos(th(i)), xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))+e*cos(th(i))], [yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))+e*sin(th(i)), yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))-e*sin(th(i))], 'LineWidth',2,'Color',blade_color) % right motor shaft
%    line([xx(i)+l*cos(th(i)), xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))], [yy(i)-l*sin(th(i)), yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))], 'LineWidth',1,'Color',shaft_color) % right motor shaft
%    %line([xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))-e*cos(th(i)), xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))], [yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))+e*sin(th(i)), yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))], 'LineWidth',2,'Color','green') % right motor shaft
%    %line([xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))+e*cos(th(i)), xx(i)+l*cos(th(i))+s*cos(pi/2-th(i))], [yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))-e*sin(th(i)), yy(i)-l*sin(th(i))+s*sin(pi/2-th(i))], 'LineWidth',2,'Color','green') % right motor shaft
%
%    line([0 0],[-axis_limit axis_limit],'LineStyle','--','Color','#B2BEB5')
%    line([-axis_limit axis_limit],[0 0],'LineStyle','--','Color','#B2BEB5')
%    axis([-axis_limit axis_limit -axis_limit axis_limit])
%    text(-4,-4,['u1: ',num2str(u(1,i))])
%    text(-4,-4.5,['u2: ',num2str(u(2,i))])
%    mov(i) = getframe;
%end
%
%%
