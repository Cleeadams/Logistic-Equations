clc;
clear;
clear all;


lags = 1;

tf = 200;
t = linspace(0, tf, 100);



sol = dde23(@ddefunc3, lags, @Nhist, t);
%sol4 = dde23(@ddefunc4, lags, @Nhist, t);

x = sol.x;
y = sol.y;


figure(2);
plot(x, y);
title('dN/dt solutions')
xlabel('t')
ylabel('N(t)')
grid



function dN = ddefunc3(t, N, NL)
   
    r = pi/2;
    k = 1;
    tau = 1;
    lam = r * tau;
    dN = (lam / tau) *  N * (1 - (NL / k));
end


function N = Nhist(t)

    k = 1;
    
    N = k * .5;

end


