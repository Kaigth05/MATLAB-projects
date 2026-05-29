function graphic

syms x f g
f=exp(x);
y=linspace(-4,0,100);
Y=zeros(100,1);
for i=1:100
    Y(i)=subs(f,x,y(i));
end
plot(y,Y, 'DisplayName','exp(x)')
title('Comparación de gráficas')
hold on

for i=1:5
    Y=zeros(100,1);
    X=-4:2/i:0;
    F=zeros(length(X),1);

    for k=1:length(X)
        F(k)=subs(f,x,X(k));
    end

    g=lagrangme(F,X,x);
    for j=1:100
        Y(j)=subs(g,x,y(j));
    end
    plot(y,Y, 'DisplayName',"L(f)"+ num2str(2*i))
    hold on
end
legend
hold off
