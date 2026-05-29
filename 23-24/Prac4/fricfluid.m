function [fn, ea, er] = fricfluid
g = @(fd)(1.93*(log10(7000)+0.5*log10(fd))-0.537-fd^-0.5);
format long e;
fn = biseccion(g,0.01,0.05,10^-4);
n = length(fn);
aux1 = fn(2:n);
aux2 = fn(1:n-1);
ea = abs(aux1-aux2);
aux1 = ea(2:n-1);
aux2 = ea(1:n-2);
er = aux1./aux2;
end

