ejer4_7 (error, cota, grafica)
%%
E1=zeros(200,1);
E2=zeros(200,1);
E3=zeros(200,1);
sa=zeros(200,1);
sb=zeros(200,1);
sc=zeros(200,1);

N=linspace(-5,5,200);

for i=1:200
    sa(i)=M10(15,N(i));
    sb(i)=M31(15,N(i));
    x=linspace(-5,5,15);
    f=(1./(1+x.^2));
    sc(i)=lagrangme(f,x,N(i));

    F=1./(1+N(i)^2);
    E1(i)=abs(F-sa(i));
    E2(i)=abs(F-sb(i));
    E3(i)=abs(F-sc(i));
end
% Calculate the maximum errors for each method
maxErrorM10 = max(E1);
maxErrorM31 = max(E2);
maxErrorLagrange = max(E3);
%%
syms f t
format longE
f=1/(1+t^2);
for i=1:15
    f=diff(f);
end
for j=1:200
    % Calculate the derivatives at each point
    derivativeValues(j) = subs(f, t, N(j));
end
maxlag=max(derivativeValues);
cota=round(maxlag/factorial(16)*5^16,6);
%%
plot(N,sa, "Color","r", 'DisplayName','M10');
hold on
plot(N,sb, "Color","g", 'DisplayName','M31');
hold on
plot(N,sc, "Color","b", 'DisplayName','Lagrange');
legend
hold off