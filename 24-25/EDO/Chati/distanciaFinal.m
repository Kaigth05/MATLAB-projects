function distancia = distanciaFinal(G)
    global G_param;
    G_param = G;
    [x,y] = resolverEDO(0,1);
    rT = [x(end); y(end)]; destino = [1/2; 1];
    distancia = norm(rT - destino)^2;
end