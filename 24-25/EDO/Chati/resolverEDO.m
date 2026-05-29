function [x,y] = resolverEDO(px,py)
    T = 1; N = 100; h = T/N;
    G = 1; m = 1;
    p = [px; py];
    x0 = [0;0;1;0]; % posición inicial (0,0), velocidad (1,0)
    f_hat = @(t,x) [ x(3);
                     x(4);
                     G*m*(p(1)-x(1))/norm(p-x(1:2))^3;
                     G*m*(p(2)-x(2))/norm(p-x(1:2))^3 ];
    X = zeros(4, N+1); X(:,1)=x0; x = x0; t = 0;
    for n=1:N
        x = x + h * f_hat(t, x);
        t = t + h;
        X(:,n+1) = x;
    end
    x = X(1,:); y = X(2,:);
end

% G0 = 1; options = optimoptions('fminunc','Display','iter'); [G_opt,fval] = fminunc(@distanciaFinal, G0, options);%
% x = fminunc(fun,x0) comienza en el punto x0 e intenta encontrar un mínimo local x de la función descrita en fun. El punto x0 puede ser un escalar, un vector o una matriz.%
% x = fminunc(fun,x0,options) minimiza fun con las opciones de optimización especificadas en options. Utilice optimoptions para configurar estas opciones.%

