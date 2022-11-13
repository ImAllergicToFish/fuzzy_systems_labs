%   �������� ������������� ������������: y=x1^2*sin(x2-1) � ��.
%                                                      (LR_1_FuzzyApr_ZD.m)
%==========================================================================
close all
%---------------------------------------------
% ���������� ������� �������  y=x1^2*sin(x2-1)
% � �������    x1 e [-7, 3];  x2 e [-4.4, 1.7]
%---------------------------------------------

n = 15;         % ���������� ����� �������������


% % ********************************* Var_17 ***
yx = zeros(n, n);
x1 = linspace(-1.5, 1.5, n);
x2 = linspace(-2.2, 2.2, n);

for i = 1:n
    yx(i,:) = exp(-abs(x1)).*(x1.^5+x2(i)^4).*sin(x1*x2(i)).^2;
end    
%---------------------------------------------

h18 = figure(18);
set(h18,'Position',[1359 49   330   260])
surf(x1, x2, yx)
axis([min(x1)  max(x1) ...
      min(x2)  max(x2)  ...
      min(min(yx))  max(max(yx)) ]); 
view(-40,30)
xlabel('x_1');   ylabel('x_2');   zlabel('y');
title('�������� �����������') 

