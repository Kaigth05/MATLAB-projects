G_values = linspace(0, 10, 100);
distancias = arrayfun(@(G) distanciaFinal2(G), G_values);
plot(G_values, distancias);
xlabel('G'); ylabel('Distancia²');