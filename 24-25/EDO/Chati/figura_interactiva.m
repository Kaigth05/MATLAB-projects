close all;
f=figure(1);

px = -0.5;
py = 0.5;
[x,y] = resolverEDO(px,py);
plot(x,y,'--');
hold on;
plot(px,py,'o');
axis(2*[-1 1 -1 1]);

set(f,'WindowButtonDownFcn', @alPulsar)

function alPulsar(src,~)
    pt = get(gca,'CurrentPoint');
    px = pt(1,1);
    py = pt(1,2);
    [x,y] = resolverEDO(px,py);
    hold off;
    plot(x,y,'--');
    hold on;
    plot(px,py,'o');
    axis(2*[-1 1 -1 1]);
    drawnow;
end