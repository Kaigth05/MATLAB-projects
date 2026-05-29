function graphic

syms x
f=sin(2*x);

f1=abs(f-(-0.7568 + 0.4854*(x - 2)));
f2=abs(f-(0.9093 - 1.6661*(x - 1) + 1.0757*(x - 1)*(x - 2) - 0.2112*(x -...
1)*(x - 2)*(x - 3)));
f3=abs(f-(-0.7568 - 1.3073*(x - 2) + 1.7927*(x - 2)^2 - 0.3575*(x - 2)^2*(x - 3)));
f4=abs(f-(0.058225*x^5-1.16785*x^4+7.668525*x^3-20.9834*x^2+23.3172*x-7.9834));


y=linspace(2,3,100);
A=zeros(100,1);
for i=1:100
    A(i)=subs(f1,x,y(i));
end
plot(y,A, 'DisplayName','f-L12')
title('Comparación de errores')

hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(f2,x,y(i));
end
plot(y,A, 'DisplayName','f-L1234')

hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(f3,x,y(i));
end
plot(y,A, 'DisplayName','f-H12')

hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(f4,x,y(i));
end
plot(y,A, 'DisplayName','f-H1234')
hold on
plot(y,1/2*ones(100,1), 'DisplayName','1/2')
hold on
plot(y,1/3*ones(100,1), 'DisplayName','1/3')
hold on
plot(y,1/6*ones(100,1), 'DisplayName','1/6')
hold on
plot(y,4/45*ones(100,1), 'DisplayName','4/45')
hold on
axis([2 3 0 0.51])
legend
hold off
