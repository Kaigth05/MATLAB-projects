function graphs
syms x f t
f=cos(2*x);
f1=taylorme(f,2,0,x);
f2=taylorme(f,4,0,x);
f3=taylorme(f,6,0,x);

y=linspace(-2,2,100);
y1=zeros(100,1);
for i=1:100
    y1(i)=subs(f,x,y(i));
end
plot(y,y1, 'DisplayName','cos(2x)')
title('Comparación de gráficas')

hold on
y2=zeros(100,1);
for i=1:100
    y2(i)=subs(f1,t,y(i));
end
plot(y,y2, 'DisplayName','T2(f)')
y3=zeros(100,1);
for i=1:100
    y3(i)=subs(f2,t,y(i));
end
plot(y,y3, 'DisplayName','T4(f)')

y4=zeros(100,1);
for i=1:100
    y4(i)=subs(f3,t,y(i));
end
plot(y,y4,'DisplayName','T6(f)')
axis([-1 1 -1 1])
legend
hold off