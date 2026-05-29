%%
syms x
f=sin(2*x);

f1=abs(f-(-0.7568 + 0.4854*(x - 2)));
f2=abs(f-(0.9093 - 1.6661*(x - 1) + 1.0757*(x - 1)*(x - 2) - 0.2112*(x -...
1)*(x - 2)*(x - 3)));
f3=abs(f-(-0.7568 - 1.3073*(x - 2) + 1.7927*(x - 2)^2 - 0.3575*(x - 2)^2*(x - 3)));
f4=abs(f-(0.058225*x^5-1.16785*x^4+7.668525*x^3-20.9834*x^2+23.3172*x-7.9834));
a1=2*(x-2)*(3-x);
a2=2/3*(x-1)*(x-2)*(3-x)*(4-x);
a3=2/3*(x-2)^2*(x-3)^2;
a4=4/45*(1-x)*(x-2)^2*(x-3)^2*(x-4);

%%
y=linspace(2,3,100);
A=zeros(100,1);
for i=1:100
    A(i)=subs(f1,x,y(i));
end
plot(y,A, 'DisplayName','f-L12')
set(gca, 'YScale', 'log')
title('Comparación de errores')
hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(a1,x,y(i));
end
plot(y,A, 'DisplayName','m|c(x)|')
hold on
plot(y,1/2*ones(100,1), 'DisplayName','1/2')
axis([2 3 0 1])
legend
hold off
%%
y=linspace(2,3,100);
A=zeros(100,1);
for i=1:100
    A(i)=subs(f2,x,y(i));
end
plot(y,A, 'DisplayName','f-L1234')
set(gca, 'YScale', 'log')
title('Comparación de errores')
hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(a2,x,y(i));
end
plot(y,A, 'DisplayName','m|c(x)|')
hold on
plot(y,2/3*ones(100,1), 'DisplayName','2/3')
axis([2 3 0 1])
legend
hold off
%%
y=linspace(2,3,100);
A=zeros(100,1);
for i=1:100
    A(i)=subs(f3,x,y(i));
end
plot(y,A, 'DisplayName','f-H12')
set(gca, 'YScale', 'log')
title('Comparación de errores')
hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(a3,x,y(i));
end
plot(y,A, 'DisplayName','m|c(x)|')
hold on
plot(y,1/6*ones(100,1), 'DisplayName','1/6')
axis([2 3 0 0.5])
legend
hold off
%% 
y=linspace(2,3,100);
A=zeros(100,1);
for i=1:100
    A(i)=subs(f4,x,y(i));
end
plot(y,A, 'DisplayName','f-H1234')
set(gca, 'YScale', 'log')
title('Comparación de errores')
hold on
A=zeros(100,1);
for i=1:100
    A(i)=subs(a4,x,y(i));
end
plot(y,A, 'DisplayName','m|c(x)|')
hold on
plot(y,4/45*ones(100,1), 'DisplayName','4/45')
axis([2 3 0 0.5])
legend
hold off