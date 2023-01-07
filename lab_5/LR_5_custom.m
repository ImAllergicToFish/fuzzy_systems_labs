%   Разработка системы нечёткого вывода
%   в режиме командной строки                           (LR_5_KomSintFIS.m)
%==========================================================================
clear all       % очистка памяти (leaving the workspace empty)
clc             % очистка командного окна  (Clear Command Window) 
%--------------------------------------------------------------------------
%  Будем разрабатывать в режиме командной строки систему нечёткого вывода,
%  которая ранее (LR_1) была создана в среде GUI Fuzzy Logic Toolbox 
%  и сохранена на диске под именем firstM.fis
% ---------------------------------------
% fuzzy
fis = readfis('firstM_custom');        % загрузка нечёткой системы с диска
% fuzzy(fis)
% getfis(fis);
% showfis(fis);
% -------------------------------------------------------------------------
% РАЗРАБОТКА СИСТЕМЫ НЕЧЁТКОГО ВЫВОДА

fisK = newfis('firstMK_custom');      

fisK.input(1).name = 'x1'; % имя первой входной переменной
fisK.input(1).range = [-1.5 1.5]; % границы первой входной переменной

fisK.input(1).mf(1).name = 'оч_низ'; % имя перв.функц.прин. перв.вх.перем.
fisK.input(1).mf(1).type = 'trimf'; % тип перв.функц.прин. перв.вх.перем.
fisK.input(1).mf(1).params = [-2.25 -1.5 -0.75]; % параметры перв.функц.прин. перв.вх.перем.

fisK.input(1).mf(2).name = 'низ'; % вторая функц. прин. перв.вх.перем.
fisK.input(1).mf(2).type = 'trimf';         
fisK.input(1).mf(2).params = [-1.5 -0.75 0];

fisK.input(1).mf(3).name = 'сред'; % третья функц. прин. перв.вх.перем.
fisK.input(1).mf(3).type = 'trimf';         
fisK.input(1).mf(3).params = [-0.75 1.388e-17 0.75];

fisK.input(1).mf(4).name = 'выс'; % четв функц. прин. перв.вх.перем.
fisK.input(1).mf(4).type = 'trimf';         
fisK.input(1).mf(4).params = [0 0.75 1.5]; 

fisK.input(1).mf(5).name = 'очвыс'; % пятая функц. прин. перв.вх.перем.
fisK.input(1).mf(5).type = 'trimf';         
fisK.input(1).mf(5).params = [0.75 1.5 2.25]; 

fisK.input(2).name = 'x2'; % вторая входная переменная
fisK.input(2).range = [-2.2 2.2];   

fisK.input(2).mf(1).name = 'оч_низ';        
fisK.input(2).mf(1).type = 'trimf';         
fisK.input(2).mf(1).params = [-3.3 -2.2 -1.1];	

fisK.input(2).mf(2).name = 'низ';       
fisK.input(2).mf(2).type = 'trimf';         
fisK.input(2).mf(2).params = [-2.2 -1.1 0];

fisK.input(2).mf(3).name = 'сред';       
fisK.input(2).mf(3).type = 'trimf';         
fisK.input(2).mf(3).params = [-1.1 0 1.1];

fisK.input(2).mf(4).name = 'выс';       
fisK.input(2).mf(4).type = 'trimf';         
fisK.input(2).mf(4).params = [0 1.1 2.2];

fisK.input(2).mf(5).name = 'оч_выс';       
fisK.input(2).mf(5).type = 'trimf';         
fisK.input(2).mf(5).params = [1.1 2.2 3.3];

fisK.output(1).name = 'y'; % выходная переменная 
fisK.output(1).range = [-1.5 12];  

fisK.output(1).mf(1).name = 'низ';        
fisK.output(1).mf(1).type = 'gaussmf';         
fisK.output(1).mf(1).params = [0.8 -1.762];	

fisK.output(1).mf(2).name = 'нул';        
fisK.output(1).mf(2).type = 'gaussmf';         
fisK.output(1).mf(2).params = [0.5 0];	

fisK.output(1).mf(3).name = 'выш_нул';        
fisK.output(1).mf(3).type = 'gaussmf';         
fisK.output(1).mf(3).params = [0.8 2];

fisK.output(1).mf(4).name = 'оч_выс';        
fisK.output(1).mf(4).type = 'gaussmf';         
fisK.output(1).mf(4).params = [0.5612 12];	

% Задаём базу правил
fisK.rule(1).antecedent = [1 1]; % усл.перв.прав.: ном.функц.прин.вх.перем.
fisK.rule(1).connection = 1; % логич.опер.перв.прав.: 1-AND, 2-OR
fisK.rule(1).consequent = 2; % закл.перв.прав.: ном.фун.прин.вых.перем.
fisK.rule(1).weight = 1; % вес первого правила

fisK.rule(2).antecedent = [1 2]; % второе правило
fisK.rule(2).connection = 1;       
fisK.rule(2).consequent = 1;     
fisK.rule(2).weight = 1;           

fisK.rule(3).antecedent = [1 3]; % 3 правило
fisK.rule(3).connection = 1;       
fisK.rule(3).consequent = 2;     
fisK.rule(3).weight = 1;           

fisK.rule(4).antecedent = [1 4]; % 4 правило
fisK.rule(4).connection = 1;       
fisK.rule(4).consequent = 1;     
fisK.rule(4).weight = 1;           

fisK.rule(5).antecedent = [1 5]; % 5 правило
fisK.rule(5).connection = 1;       
fisK.rule(5).consequent = 2;     
fisK.rule(5).weight = 1;           

fisK.rule(6).antecedent = [2 1]; % 6 правило
fisK.rule(6).connection = 1;       
fisK.rule(6).consequent = 4;     
fisK.rule(6).weight = 1;           

fisK.rule(7).antecedent = [2 2]; % 7 правило
fisK.rule(7).connection = 1;       
fisK.rule(7).consequent = 2;     
fisK.rule(7).weight = 1; 

fisK.rule(8).antecedent = [2 3];   % 8 правило
fisK.rule(8).connection = 1;       
fisK.rule(8).consequent = 2;     
fisK.rule(8).weight = 1;     

fisK.rule(9).antecedent = [2 4]; % 9 правило
fisK.rule(9).connection = 1;       
fisK.rule(9).consequent = 2;     
fisK.rule(9).weight = 1;     

fisK.rule(10).antecedent = [2 5]; % 10 правило
fisK.rule(10).connection = 1;       
fisK.rule(10).consequent = 4;     
fisK.rule(10).weight = 1;     

fisK.rule(11).antecedent = [3 1]; % 11 правило
fisK.rule(11).connection = 1;       
fisK.rule(11).consequent = 2;     
fisK.rule(11).weight = 1;     

fisK.rule(12).antecedent = [3 2]; % 12 правило
fisK.rule(12).connection = 1;       
fisK.rule(12).consequent = 2;     
fisK.rule(12).weight = 1;     

fisK.rule(13).antecedent = [3 3]; % 13 правило
fisK.rule(13).connection = 1;       
fisK.rule(13).consequent = 2;     
fisK.rule(13).weight = 1;     

fisK.rule(14).antecedent = [3 4]; % 14 правило
fisK.rule(14).connection = 1;       
fisK.rule(14).consequent = 2;     
fisK.rule(14).weight = 1;     

fisK.rule(15).antecedent = [3 5]; % 15 правило
fisK.rule(15).connection = 1;       
fisK.rule(15).consequent = 2;     
fisK.rule(15).weight = 1;     

fisK.rule(16).antecedent = [4 1]; % 16 правило
fisK.rule(16).connection = 1;       
fisK.rule(16).consequent = 4;     
fisK.rule(16).weight = 1;     

fisK.rule(17).antecedent = [4 2]; % 17 правило
fisK.rule(17).connection = 1;       
fisK.rule(17).consequent = 2;     
fisK.rule(17).weight = 1;     

fisK.rule(18).antecedent = [4 3]; % 18 правило
fisK.rule(18).connection = 1;       
fisK.rule(18).consequent = 2;     
fisK.rule(18).weight = 1;     

fisK.rule(19).antecedent = [4 4]; % 19 правило
fisK.rule(19).connection = 1;       
fisK.rule(19).consequent = 2;     
fisK.rule(19).weight = 1;     

fisK.rule(20).antecedent = [4 5]; % 20 правило
fisK.rule(20).connection = 1;       
fisK.rule(20).consequent = 4;     
fisK.rule(20).weight = 1;     

fisK.rule(21).antecedent = [5 1]; % 21 правило
fisK.rule(21).connection = 1;       
fisK.rule(21).consequent = 2;     
fisK.rule(21).weight = 1;     

fisK.rule(22).antecedent = [5 2]; % 22 правило
fisK.rule(22).connection = 1;       
fisK.rule(22).consequent = 3;     
fisK.rule(22).weight = 1;     

fisK.rule(23).antecedent = [5 3]; % 23 правило
fisK.rule(23).connection = 1;       
fisK.rule(23).consequent = 2;     
fisK.rule(23).weight = 1;     

fisK.rule(24).antecedent = [5 4]; % 24 правило
fisK.rule(24).connection = 1;       
fisK.rule(24).consequent = 3;     
fisK.rule(24).weight = 1;     

fisK.rule(25).antecedent = [5 5]; % 25 правило
fisK.rule(25).connection = 1;       
fisK.rule(25).consequent = 2;     
fisK.rule(25).weight = 1;     

% ---------------------------------------
writefis(fisK,'firstMK')    % сохранение разработанной FIS на диске
% fuzzy(fisK)
% -------------------------------------------------------------------------
% СРАВНЕНИЕ ДВУХ СИСТЕМ НЕЧЁТКОГО ВЫВОДА (ПРОВЕРКА ИДЕНТИЧНОСТИ)

n = 15;         % количество точек дискретизации
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
title('Исходная система нечёткого вывода Мамдани - firstM.fis') 

h2 = figure(2);
set(h2,'Position',[539   553   524   407])
surf(x1, x2, yMK)
axis([-1.5     1.5 ...
      -2.2	2.2 ...
      -1.5   12]); 
%view(-40,30)
xlabel('x_1');   ylabel('x_2');   zlabel('y');
title('Созданная в режиме командной строки FIS - firstMK.fis') 

% ---------------------------------------
% Максимальное отклонение выходного значения FIS

maxER = max(max(yM-yMK));

disp(' ')
disp('Макс. откл. выхода синтезир. в режиме ком.стр. FIS от исходной:')
disp([' maxER = ',  num2str(maxER)])
disp(' ')
% -------------------------------------------------------------------------





