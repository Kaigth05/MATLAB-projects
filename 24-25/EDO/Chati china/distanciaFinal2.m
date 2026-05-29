function distancia = distanciaFinal2(G)
    [x, y] = resolverEDO2(0, 1, G);  % ¡Pasamos G aquí!
    r_final = [x(end); y(end)];
    objetivo = [0.5; 1];
    distancia = norm(r_final - objetivo)^2;
end