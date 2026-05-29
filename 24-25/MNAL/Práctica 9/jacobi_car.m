function x = jacobi_car(A, b, x0, tol, maxits)
    % Comprobaciones de seguridad
    if size(A, 1) ~= size(A, 2)
        error('La matriz A debe ser cuadrada.');
    end

    if size(A, 1) ~= length(b)
        error('El tamaÃ±o de b debe coincidir con el nÃºmero de filas de A.');
    end

    if size(A, 1) ~= length(x0)
        error('El tamaÃ±o de x0 debe coincidir con el nÃºmero de filas de A.');
    end

    % Verificar si la matriz A tiene ceros en la diagonal
    if any(diag(A) == 0)
        error('La matriz A no puede tener ceros en la diagonal.');
    end

    % InicializaciÃ³n
    D = diag(A);  % Vector de la diagonal de A
    N = A - diag(D);  % Matriz A sin su diagonal
    x_prev = x0;
    x = x0; % Inicializamos x por seguridad

    % Bucle iterativo
    for k = 1:maxits
        % Calcular nueva aproximaciÃ³n
        x = (b - N * x_prev) ./ D;

        % Verificar convergencia 
        if abs(x - x_prev) < tol
            fprintf('Convergencia alcanzada en %d iteraciones.\n', k);
            return;
        end

        % Actualizar para la siguiente iteraciÃ³n
        x_prev = x;
    end

    % Si no converge
    warning('El mÃ©todo de Jacobi no convergiÃ³ en el nÃºmero mÃ¡ximo de iteraciones (%d).', maxits);
end