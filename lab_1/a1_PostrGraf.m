% Нечёткая аппроксимация завуисимости: 
% y=exp(-abs(x1))*(x1^5+x2^4)*sin(x1*x2)^2
%                                                         (a1_PostrGraf.m)
%==========================================================================
% Построение графика функции  y(x1, x2)
% в области    x1 e [-1.5, 1.5];  x2 e [-2.2, 2.2]
%---------------------------------------------
clc;
clear;
close all;

n = 15;         % количество точек дискретизации

x1 = linspace(-1.5, 1.5, n);
x2 = linspace(-2.2, 2.2, n);

y = zeros(n, n);

for i = 1:n
    y(i,:) = exp(-abs(x1)).*(x1.^5+x2(i)^4).*sin(x1.*x2(i)).^2;   
end    

% x1 = linspace(-7, 3, n);
% x2 = linspace(-4.4, 1.7, n);
% 
% y = zeros(n, n);
% 
% for i = 1:n
%     %y(i,:) = exp(-abs(x1)).*(x1.^5+x2(i)^4).*sin(x1.*x2(i)).^2;   
%     y(i, :) = -4*x1 - x2;
% end    

%---------------------------------------------
h1 = figure(1);
surf(x1, x2, y)
xlabel('x_1');   ylabel('x_2');   zlabel('y');
title('Исходная зависимость') 

Max_y = max(y);
max_y = max(Max_y);

Min_y = min(y);
min_y = min(Min_y);

% h2 = figure(2);
% set(h2,'Position',[4   527   547   443])
% clf
% hold on
% colormap([0 0 0;0 0 0]);
% mesh(x1, x2, y)
% mesh(x1, x2, 0.2*y)
% axis([-10     5 ...
%       -6	2 ...
%       -50   50]); 
% view(-40,30)
% grid on;
% hold off
