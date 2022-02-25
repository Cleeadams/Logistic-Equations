clc;
clear;
clear all;


lags = 1;

tf = 30;
t = linspace(0, tf, 1000);


sol3 = dde23(@ddefunc3, lags, @uhist, t);
sol4 = dde23(@ddefunc4, lags, @uhist, t);
sol5 = dde23(@ddefunc5, lags, @uhist, t);

t3 = sol3.x;
u  = sol3.y;
t4 = sol4.x;
u2  = sol4.y;
t5 = sol5.x;
u3  = sol5.y;

figure(2);
plot(t3,u);
hold on
plot(t4,u2);
hold on
plot(t5,u3);
hold off
title('du/dx solutions')
xlabel('x')
ylabel('u(x)')
legend('\lambda = \pi/2-.01', '\lambda = \pi/2', '\lambda = \pi/2+.01','location','northwest')
axis([0,tf,-3,3])
grid


function du = ddefunc3(t, u, UL)
    
    lam = pi/2 - .01;
    
    du = -lam * UL;

end



function du2 = ddefunc4(t, u, UL)
    
    lam = pi/2;
    
    du2 = -lam * UL;

end

function du3 = ddefunc5(t, u, UL)
    
    lam = pi/2 + .01;
    
    du3 = -lam * UL;

end



function u = uhist(t)

    u = .5;
    
end

