clc;
clear;
clear all;

lags = 1;

tf = 500;
t = linspace(0, tf, 10);

sol = dde23(@ddefunc, lags, @yhist, t);
sol2 = dde23(@ddefunc2, lags, @yhist, t);
% solu = dde23(@ddefuncu, lags, @uhist, t);
% solu2 = dde23(@ddefuncu2, lags, @uhist, t);
% solu3 = dde23(@ddefuncu3, lags, @uhist, t);
sol4 = dde23(@ddefunc4, lags, @yhist, t);

t = sol.x;
y = sol.y;
t2 = sol2.x;
y2 = sol2.y;
t4 = sol4.x;
y3 = sol4.y;

% t3 = solu.x;
% u  = solu.y;
% t5 = solu2.x;
% u2  = solu2.y;
% t6 = solu3.x;
% u3  = solu3.y;


figure(1);
plot(t, y);
hold on
plot(t2, y2);
hold on
plot(t4,y3);
hold off
title('dy/dx Solutions')
xlabel('x')
ylabel('y(x)')
legend('\lambda = 1', '\lambda = \pi/2', '\lambda = 1.8', 'location','northwest')
grid

% figure(2);
% plot(t3, u);
% hold on
% %plot(t5, u2);
% %hold on
% plot(t6, u3);
% hold off
% title('du/dx solutions')
% xlabel('x')
% ylabel('u(x)')
% %legend('\lambda = 1', '\lambda = \pi/2', '\lambda = 1.8', 'location','northwest')
% legend('\lambda = 1', '\lambda = 1.8', 'location','northwest')
% grid
% % 
% 
% 
function dy = ddefunc(t, y, YL)
    
    lam = 1;
    
    dy = lam * y * (1 - YL);

end

function dy2 = ddefunc2(t, y, YL)
    
    lam = 1.5707963267948966;
    dy2 = lam * y * (1 - YL);

end

function dy3 = ddefunc4(t, y, YL)
    
    lam = 2.2;
    dy3 = lam * y * (1 - YL);

end
% 
% function du = ddefuncu(t, u, UL)
%     
%     lam = 1;
%     
%     du = -(lam*u + lam) * UL;
% 
% end
% function du = ddefuncu2(t, u, UL)
%     
%     lam = pi/2;
%     
%     du = -(lam*u + lam) * UL;
% 
% end
% function du = ddefuncu3(t, u, UL)
%     
%     lam = 1.8;
%     
%     du = -(lam*u + lam) * UL;
% 
% end

% 

function y = yhist(t)

    y = .5;
    
end

% function u = uhist(t)
% 
%     u = .5 - 1;
%     
% end
