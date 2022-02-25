clc;
clear;
clear all;


lags = 1;
hist = 1;
tspan = [0,3];


sol = dde23(@example1F,lags,hist,tspan);

y2 = -sol.y + 2;



figure;
plot(sol.x,sol.y);
hold on
plot(sol.x,y2);
hold off
title('Solution using dde23')
xlabel('time (s)')
ylabel('x(t)')
grid on
%axis([-1,4,0,6.5])


function v = example1F(t,y,Z)
v = Z(:,1);
end



