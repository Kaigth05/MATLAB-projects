function [x, y] = euler_orbita(G, M, r1_0, r2_0, v1_0, v2_0, px, py)
% euler_orbita: Simula una órbita con el método de Euler para el sistema 1
%
% Parámetros de entrada:
% G      - Constante de gravitación
% M      - Masa del cuerpo central
% r1_0   - Posición inicial en x
% r2_0   - Posición inicial en y
% v1_0   - Velocidad inicial en x
% v2_0   - Velocidad inicial en y
% px     - Posición x del gráfico (ignorado aquí, puede usarse para figuras múltiples)
% py     - Posición y del gráfico (ignorado aquí, puede usarse para figuras múltiples)
%
% Salida:
% x      - Vector con valores de r1 (posición x) en cada iteración
% y      - Vector con valores de r2 (posición y) en cada iteración

    % Parámetros de integración
    T = 1;         % Paso de integración (segundos)
    N = 100;       % Número de pasos

    % Inicialización de vectores
    x = zeros(1, N+1);  % r1
    y = zeros(1, N+1);  % r2
    v1 = zeros(1, N+1);
    v2 = zeros(1, N+1);

    % Condiciones iniciales
    x(1) = r1_0;
    y(1) = r2_0;
    v1(1) = v1_0;
    v2(1) = v2_0;

    % Método de Euler
    for n = 1:N
        R = sqrt(x(n)^2 + y(n)^2);
        
        dx = v1(n);
        dy = v2(n);
        dv1 = -G * M * x(n) / R^3;
        dv2 = -G * M * y(n) / R^3;
        
        x(n+1) = x(n) + T * dx;
        y(n+1) = y(n) + T * dy;
        v1(n+1) = v1(n) + T * dv1;
        v2(n+1) = v2(n) + T * dv2;
    end
end
