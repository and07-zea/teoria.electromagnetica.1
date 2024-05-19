%% Universidad del Valle de Guatemala
% Teoria Electromagnetica 1
% Proyecto 1 - FF3011
% Entrega mayo 9
% Andrea Rodriguez Zea (19429)

clc
clear all
close all

%% Inciso a
Vo1 = 100;

a1 = 1; 
b1 = 1;

x1 = linspace(0, b1, 100); % Vector de valores de x
y1 = linspace(0, a1, 100); % Vector de valores de y

c1 = 4.* Vo1/pi;

V1 = zeros(length(x1), length(y1));     % Matriz para valores de V(x1, y1)

for i1 = 1:length(x1)                   % Espacio para x1 de 1 al largo de x1
    for j1 = 1:length(y1)               % Espacio para y1 de 1 al largo de y1
        sum1_0 = [];

        for k1 = 1:5                    % Primeros 5 términos de la sumatoria
            n1 = 2*k1 - 1;
            a1_1 = sin(n1*pi*x1(i1)/b1);        % sin numerador
            a1_2 = sinh(n1*pi*y1(j1)/b1);       % sinh numerador
            a1_3 = n1*sinh(n1*pi*a1/b1);        % denominador
            sum1_0(k1) = a1_1*a1_2/a1_3;        % Ecuaciones en sumatoria
        end
        sum1 = sum1_0(1)+sum1_0(2)+sum1_0(3)+sum1_0(4)+sum1_0(5);
        V1(i1, j1) = sum1*c1;                   % Sumatoria x constante
    end
end

figure(1);                              % Genera espacio para graficas
subplot(2,2,1);                         % Graficar V(x_1, y_1) en spot 1

sc1 = meshc(x1, y1, V1');               % Usar meshc
ax1 = gca;                              % Obtiene el eje actual
ax1.ZLim(2) = 120;                      % Traslada el eje Z al límite
sc1(2).ZLocation = 'zmax';              % Se define el tope

xlabel('x_1');
ylabel('y_1');

title('V(x_1, y_1)');                   % Titulo del grafico

sgtitle('Superficies Equipotenciales', 'Color','#E75480');
colorbar;                   % Barra de color para mostrar los valores de V

%% Inciso b 
% El código utilizado en todos los incisos a continuación es el mismo al
% explicado en el espacio anterior, las variables sustituyen '1' por el
% número de caso realizado según la guía de trabajo.

Vo2 = 100;

a2 = 1; 
b2 = 2;

x2 = linspace(0, b2, 100);
y2 = linspace(0, a2, 100);

c2 = 4.* Vo2/pi;

V2 = zeros(length(x2), length(y2));

for i2 = 1:length(x2)

    for j2 = 1:length(y2)
        sum2_0 = [];

        for k2 = 1:5 % Utilizar los primeros 5 términos de la sumatoria
            n2 = 2*k2 - 1;
            a2_1 = sin(n2*pi*x2(i2)/b2);
            a2_2 = sinh(n2*pi*y2(j2)/b2);
            a2_3 = n2*sinh(n2*pi*a2/b2);
            sum2_0(k2) = a2_1*a2_2/a2_3;
        end
        sum2 = sum2_0(1)+sum2_0(2)+sum2_0(3)+sum2_0(4)+sum2_0(5);
        V2(i2, j2) = sum2*c2;
    end

end

subplot(2,2,2);

sc2 = meshc(x2, y2, V2');
ax2 = gca;
ax2.ZLim(2) = 120;
sc2(2).ZLocation = 'zmax';

xlabel('x_2');
ylabel('y_2');
title('V(x_2, y_2)');
colorbar;

%% Inciso c
Vo3 = 100;

a3 = 1; 
b3 = 3;

x3 = linspace(0, b3, 100); % Vector de valores de x
y3 = linspace(0, a3, 100); % Vector de valores de y

c3 = 4.* Vo3/pi;

V3 = zeros(length(x3), length(y3));

for i3 = 1:length(x3)
    for j3 = 1:length(y3)
        sum3_0 = [];

        for k3 = 1:5 % Utilizar los primeros 5 términos de la sumatoria
            n3 = 2*k3 - 1;
            a3_1 = sin(n3*pi*x3(i3)/b3);
            a3_2 = sinh(n3*pi*y3(j3)/b3);
            a3_3 = n3*sinh(n3*pi*a3/b3);
            sum3_0(k3) = a3_1*a3_2/a3_3;
        end
        sum3 = sum3_0(1)+sum3_0(2)+sum3_0(3)+sum3_0(4)+sum3_0(5);
        V3(i3, j3) = sum3*c3;
    end
end

subplot(2,2,3);

sc3 = meshc(x3, y3, V3');
ax3 = gca;
ax3.ZLim(2) = 120;
sc3(2).ZLocation = 'zmax';

xlabel('x_3');
ylabel('y_3');
title('V(x_3, y_3)');
colorbar; 

%% Inciso d
Vo4 = 100;

a4 = 4; 
b4 = 1;

x4 = linspace(0, b4, 100); % Vector de valores de x
y4 = linspace(0, a4, 100); % Vector de valores de y

c4 = 4.* Vo4/pi;

V4 = zeros(length(x4), length(y4));

for i4 = 1:length(x4)

    for j4 = 1:length(y4)
        sum4_0 = [];

        for k4 = 1:5 % Utilizar los primeros 5 términos de la sumatoria
            n4 = 2*k4 - 1;
            a4_1 = sin(n4*pi*x4(i4)/b4);
            a4_2 = sinh(n4*pi*y4(j4)/b4);
            a4_3 = n4*sinh(n4*pi*a4/b4);
            sum4_0(k4) = a4_1*a4_2/a4_3;
        end
        sum4 = sum4_0(1)+sum4_0(2)+sum4_0(3)+sum4_0(4)+sum4_0(5);
        V4(i4, j4) = sum4*c4;
    end

end

subplot(2,2,4);                 % Graficar V(x_4, y_4) en spot 4

sc4 = meshc(x4, y4, V4');       % Usar meshc
ax4 = gca;                      % Obtiene el eje actual
ax4.ZLim(2) = 120;              % Traslada el eje Z al límite
sc4(2).ZLocation = 'zmax';      % Se define el tope

xlabel('x_4');
ylabel('y_4');
title('V(x_4, y_4)');           % Título de gráfica
colorbar;                       % Barra de color para mostrar los valores de V
