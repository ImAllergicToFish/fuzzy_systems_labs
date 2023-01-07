%   ���������� ������� ��������� ������
%   � ������ ��������� ������                           (LR_5_KomSintFIS.m)
%==========================================================================
clear all       % ������� ������ (leaving the workspace empty)
clc             % ������� ���������� ����  (Clear Command Window) 
%--------------------------------------------------------------------------
%  ����� ������������� � ������ ��������� ������ ������� ��������� ������,
%  ������� ����� (LR_1) ���� ������� � ����� GUI Fuzzy Logic Toolbox 
%  � ��������� �� ����� ��� ������ firstM.fis
% ---------------------------------------
% fuzzy
fis = readfis('firstM_custom');        % �������� �������� ������� � �����
% fuzzy(fis)
% getfis(fis);
% showfis(fis);
% -------------------------------------------------------------------------
% ���������� ������� ��ר����� ������

fisK = newfis('firstMK_custom');      

fisK.input(1).name = 'x1'; % ��� ������ ������� ����������
fisK.input(1).range = [-1.5 1.5]; % ������� ������ ������� ����������

fisK.input(1).mf(1).name = '��_���'; % ��� ����.�����.����. ����.��.�����.
fisK.input(1).mf(1).type = 'trimf'; % ��� ����.�����.����. ����.��.�����.
fisK.input(1).mf(1).params = [-2.25 -1.5 -0.75]; % ��������� ����.�����.����. ����.��.�����.

fisK.input(1).mf(2).name = '���'; % ������ �����. ����. ����.��.�����.
fisK.input(1).mf(2).type = 'trimf';         
fisK.input(1).mf(2).params = [-1.5 -0.75 0];

fisK.input(1).mf(3).name = '����'; % ������ �����. ����. ����.��.�����.
fisK.input(1).mf(3).type = 'trimf';         
fisK.input(1).mf(3).params = [-0.75 1.388e-17 0.75];

fisK.input(1).mf(4).name = '���'; % ���� �����. ����. ����.��.�����.
fisK.input(1).mf(4).type = 'trimf';         
fisK.input(1).mf(4).params = [0 0.75 1.5]; 

fisK.input(1).mf(5).name = '�����'; % ����� �����. ����. ����.��.�����.
fisK.input(1).mf(5).type = 'trimf';         
fisK.input(1).mf(5).params = [0.75 1.5 2.25]; 

fisK.input(2).name = 'x2'; % ������ ������� ����������
fisK.input(2).range = [-2.2 2.2];   

fisK.input(2).mf(1).name = '��_���';        
fisK.input(2).mf(1).type = 'trimf';         
fisK.input(2).mf(1).params = [-3.3 -2.2 -1.1];	

fisK.input(2).mf(2).name = '���';       
fisK.input(2).mf(2).type = 'trimf';         
fisK.input(2).mf(2).params = [-2.2 -1.1 0];

fisK.input(2).mf(3).name = '����';       
fisK.input(2).mf(3).type = 'trimf';         
fisK.input(2).mf(3).params = [-1.1 0 1.1];

fisK.input(2).mf(4).name = '���';       
fisK.input(2).mf(4).type = 'trimf';         
fisK.input(2).mf(4).params = [0 1.1 2.2];

fisK.input(2).mf(5).name = '��_���';       
fisK.input(2).mf(5).type = 'trimf';         
fisK.input(2).mf(5).params = [1.1 2.2 3.3];

fisK.output(1).name = 'y'; % �������� ���������� 
fisK.output(1).range = [-1.5 12];  

fisK.output(1).mf(1).name = '���';        
fisK.output(1).mf(1).type = 'gaussmf';         
fisK.output(1).mf(1).params = [0.8 -1.762];	

fisK.output(1).mf(2).name = '���';        
fisK.output(1).mf(2).type = 'gaussmf';         
fisK.output(1).mf(2).params = [0.5 0];	

fisK.output(1).mf(3).name = '���_���';        
fisK.output(1).mf(3).type = 'gaussmf';         
fisK.output(1).mf(3).params = [0.8 2];

fisK.output(1).mf(4).name = '��_���';        
fisK.output(1).mf(4).type = 'gaussmf';         
fisK.output(1).mf(4).params = [0.5612 12];	

% ����� ���� ������
fisK.rule(1).antecedent = [1 1]; % ���.����.����.: ���.�����.����.��.�����.
fisK.rule(1).connection = 1; % �����.����.����.����.: 1-AND, 2-OR
fisK.rule(1).consequent = 2; % ����.����.����.: ���.���.����.���.�����.
fisK.rule(1).weight = 1; % ��� ������� �������

fisK.rule(2).antecedent = [1 2]; % ������ �������
fisK.rule(2).connection = 1;       
fisK.rule(2).consequent = 1;     
fisK.rule(2).weight = 1;           

fisK.rule(3).antecedent = [1 3]; % 3 �������
fisK.rule(3).connection = 1;       
fisK.rule(3).consequent = 2;     
fisK.rule(3).weight = 1;           

fisK.rule(4).antecedent = [1 4]; % 4 �������
fisK.rule(4).connection = 1;       
fisK.rule(4).consequent = 1;     
fisK.rule(4).weight = 1;           

fisK.rule(5).antecedent = [1 5]; % 5 �������
fisK.rule(5).connection = 1;       
fisK.rule(5).consequent = 2;     
fisK.rule(5).weight = 1;           

fisK.rule(6).antecedent = [2 1]; % 6 �������
fisK.rule(6).connection = 1;       
fisK.rule(6).consequent = 4;     
fisK.rule(6).weight = 1;           

fisK.rule(7).antecedent = [2 2]; % 7 �������
fisK.rule(7).connection = 1;       
fisK.rule(7).consequent = 2;     
fisK.rule(7).weight = 1; 

fisK.rule(8).antecedent = [2 3];   % 8 �������
fisK.rule(8).connection = 1;       
fisK.rule(8).consequent = 2;     
fisK.rule(8).weight = 1;     

fisK.rule(9).antecedent = [2 4]; % 9 �������
fisK.rule(9).connection = 1;       
fisK.rule(9).consequent = 2;     
fisK.rule(9).weight = 1;     

fisK.rule(10).antecedent = [2 5]; % 10 �������
fisK.rule(10).connection = 1;       
fisK.rule(10).consequent = 4;     
fisK.rule(10).weight = 1;     

fisK.rule(11).antecedent = [3 1]; % 11 �������
fisK.rule(11).connection = 1;       
fisK.rule(11).consequent = 2;     
fisK.rule(11).weight = 1;     

fisK.rule(12).antecedent = [3 2]; % 12 �������
fisK.rule(12).connection = 1;       
fisK.rule(12).consequent = 2;     
fisK.rule(12).weight = 1;     

fisK.rule(13).antecedent = [3 3]; % 13 �������
fisK.rule(13).connection = 1;       
fisK.rule(13).consequent = 2;     
fisK.rule(13).weight = 1;     

fisK.rule(14).antecedent = [3 4]; % 14 �������
fisK.rule(14).connection = 1;       
fisK.rule(14).consequent = 2;     
fisK.rule(14).weight = 1;     

fisK.rule(15).antecedent = [3 5]; % 15 �������
fisK.rule(15).connection = 1;       
fisK.rule(15).consequent = 2;     
fisK.rule(15).weight = 1;     

fisK.rule(16).antecedent = [4 1]; % 16 �������
fisK.rule(16).connection = 1;       
fisK.rule(16).consequent = 4;     
fisK.rule(16).weight = 1;     

fisK.rule(17).antecedent = [4 2]; % 17 �������
fisK.rule(17).connection = 1;       
fisK.rule(17).consequent = 2;     
fisK.rule(17).weight = 1;     

fisK.rule(18).antecedent = [4 3]; % 18 �������
fisK.rule(18).connection = 1;       
fisK.rule(18).consequent = 2;     
fisK.rule(18).weight = 1;     

fisK.rule(19).antecedent = [4 4]; % 19 �������
fisK.rule(19).connection = 1;       
fisK.rule(19).consequent = 2;     
fisK.rule(19).weight = 1;     

fisK.rule(20).antecedent = [4 5]; % 20 �������
fisK.rule(20).connection = 1;       
fisK.rule(20).consequent = 4;     
fisK.rule(20).weight = 1;     

fisK.rule(21).antecedent = [5 1]; % 21 �������
fisK.rule(21).connection = 1;       
fisK.rule(21).consequent = 2;     
fisK.rule(21).weight = 1;     

fisK.rule(22).antecedent = [5 2]; % 22 �������
fisK.rule(22).connection = 1;       
fisK.rule(22).consequent = 3;     
fisK.rule(22).weight = 1;     

fisK.rule(23).antecedent = [5 3]; % 23 �������
fisK.rule(23).connection = 1;       
fisK.rule(23).consequent = 2;     
fisK.rule(23).weight = 1;     

fisK.rule(24).antecedent = [5 4]; % 24 �������
fisK.rule(24).connection = 1;       
fisK.rule(24).consequent = 3;     
fisK.rule(24).weight = 1;     

fisK.rule(25).antecedent = [5 5]; % 25 �������
fisK.rule(25).connection = 1;       
fisK.rule(25).consequent = 2;     
fisK.rule(25).weight = 1;     

% ---------------------------------------
writefis(fisK,'firstMK')    % ���������� ������������� FIS �� �����
% fuzzy(fisK)
% -------------------------------------------------------------------------
% ��������� ���� ������ ��ר����� ������ (�������� ������������)

n = 15;         % ���������� ����� �������������
x1 = linspace(-1.5,     1.5, n);
x2 = linspace(-2.2, 2.2, n);

yM  = zeros(n, n);
yMK = zeros(n, n);
for i = 1:n
    yM(i,:)  = evalfis([x1; ones(size(x1))*x2(i)], fis);   
    yMK(i,:) = evalfis([x1; ones(size(x1))*x2(i)], fisK);  
end  

% ---------------------------------------
h1 = figure(1);
set(h1,'Position',[13   553   524   407])
surf(x1, x2, yM)
axis([-1.5     1.5 ...
      -2.2	2.2 ...
      -1.5   12]); 
%view(-40,30)
xlabel('x_1');   ylabel('x_2');   zlabel('y');
title('�������� ������� ��������� ������ ������� - firstM.fis') 

h2 = figure(2);
set(h2,'Position',[539   553   524   407])
surf(x1, x2, yMK)
axis([-1.5     1.5 ...
      -2.2	2.2 ...
      -1.5   12]); 
%view(-40,30)
xlabel('x_1');   ylabel('x_2');   zlabel('y');
title('��������� � ������ ��������� ������ FIS - firstMK.fis') 

% ---------------------------------------
% ������������ ���������� ��������� �������� FIS

maxER = max(max(yM-yMK));

disp(' ')
disp('����. ����. ������ ��������. � ������ ���.���. FIS �� ��������:')
disp([' maxER = ',  num2str(maxER)])
disp(' ')
% -------------------------------------------------------------------------





