function graphcheb

syms x
f=exp(x);

xeje=linspace(-4,0,1001);
Y=zeros(1001,1);
for k=1:1001
    Y(k)=subs(f,x,xeje(k));
end
plot(xeje,Y, 'DisplayName','exp(x)')
title('Comparacion de graficas')
hold on

for n=2:2:8
    X=zeros(n,1); 
    F=zeros(n,1);
    for i=1:n
        X(i)=2*cos((2*i-1)/(2*n)*pi)-2;
        F(i)=subs(f,x,X(i));
    end
    sol=lagrangme(F,X,x);

    Y=zeros(1001,1);
    for j=1:1001
        Y(j)=subs(sol,x,xeje(j));
    end
plot(xeje, Y, 'DisplayName', "Q"+num2str(n))
hold on
end
legend
hold off
