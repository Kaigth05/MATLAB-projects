function [x, y] = resolverEDO2(px, py, G)  % ¡Nuevo parámetro G!
    % Parámetros iniciales
    r0 = [0; 0]; v0 = [1; 0];
    p = [px; py]; m = 1; T = 5; N = 10^5; h = T/N;
    
    % Definir f (ahora usa G)
    f = @(t, r1, r2, v1, v2) [v1; v2; ...
        G*m*(p(1) - r1)/(norm(p - [r1; r2])^3); ...  % G aquí
        G*m*(p(2) - r2)/(norm(p - [r1; r2])^3)];
    
    % Resto del código (igual)
    t = 0:h:T;
    x = zeros(1, N+1); y = x; v1 = x; v2 = x;
    x(1) = r0(1); y(1) = r0(2);
    v1(1) = v0(1); v2(1) = v0(2);
    
    for i = 1:N
        deriv = f(t(i), x(i), y(i), v1(i), v2(i));
        x(i+1) = x(i) + h * deriv(1);
        y(i+1) = y(i) + h * deriv(2);
        v1(i+1) = v1(i) + h * deriv(3);
        v2(i+1) = v2(i) + h * deriv(4);
    end
end