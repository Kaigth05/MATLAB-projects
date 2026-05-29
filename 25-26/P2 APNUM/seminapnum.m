syms x f
f=sin(1/(1+x^2));
X=-1:2/4:1;
F=zeros(5,1);
for i=1:5
F(i)=subs(f,x,X(i));
end
sol=lagrangme(F,X,x);

C=zeros(5,1);
for i=1:5
C(i)=cos(pi*(2*i-1)/(2*5));
end
for i=1:5
F(i)=subs(f,x,C(i));
end
sol1=lagrangme(F,C,x);
Y=linspace(-1,1,1000);

y1=zeros(1000,1);y2=zeros(1000,1);
for i=1:1000
y1(i)=subs(sol,x,Y(i)); y2(i)=subs(sol1,x,Y(i));
end
z=zeros(1000,1);
for i=1:1000
z(i)=subs(f,x,Y(i));
end
plot(Y,z, 'DisplayName','log(x+2)')
title('Comparacion de funciones')
hold on
plot(Y,y1, 'DisplayName','lagrange x-esp')
hold on
plot(Y,y2, 'DisplayName','lagrange cheb-esp')
hold on
legend 
hold off