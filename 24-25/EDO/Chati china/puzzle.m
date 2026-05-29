clear all;
close all;

global px_sol py_sol

f=figure(1);

px_sol = 2*rand-1;
py_sol = 2*rand-1;
px = 2*rand-1;
py = 2*rand-1;
dibujar(px,py);
hold on;
plot(px,py,'o');
dibujar(px_sol,py_sol);
set(f,'WindowButtonDownFcn', @alPulsar)

function dibujar(px,py)
    [x,y] = resolverEDO2(px,py,1.9774);
    plot(x,y,'--');
    axis([-1 1 -1 1]);
end

function alPulsar(src,~)
    global px_sol py_sol
    pt = get(gca,'CurrentPoint');
    px = pt(1,1);
    py = pt(1,2);
    hold off;
    dibujar(px,py);
    hold on;
    plot(px,py,'o');
    dibujar(px_sol,py_sol);
    axis([-1 1 -1 1]);
    drawnow;
end