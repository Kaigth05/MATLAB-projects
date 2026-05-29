function [sc,sd,sf]=aproxparatiempo

syms c d f fc fd ff

A=[14.3, 14.4, 14.3, 13.2, 12.8, 12.2, 11.7,11.3,10.7,9.8,9.8]';
B=[13.8,14.1,13.7,13.3,13.8,13.7,15.5,17.5,14.3,13.8,14]';
E=[-197.5,-8,-12.1,-16.9,-16.4,-14.4,-7.1,-8.7,-18.3,-13.1,-32.3]';
P=[2857815,2835978,2803186,2755189, 2707203, 2664224, 2635130, 2595809,... 
    2528654,2457783,2402306]';
A=A/1000; B=B/1000; E=E/1000;
a=A(1)*ones(10,1); b=B(1)*ones(10,1); e=E(2)*ones(10,1); %En 2014 hay un outlier de migración.

exc=(A(2:11)-a)./P(1:10);
exd=(B(2:11)-b)./P(1:10);
exf=(E(2:11)-e)./P(1:10);

fc=0; fd=0; ff=0; 
for i=1:10
    fc=fc+(c-exc(i))^2;
    fd=fd+(d-exd(i))^2;
    ff=ff+(f-exf(i))^2;
end
X = linspace(0, 10^-8, 10^4);
Fc=@(x) subs(fc,c,x);
y=zeros(10^4,1);
for i=1:10^4
    y(i)=Fc(X(i));
end
[~,ayuda]=min(y);
sc=X(ayuda);

Fd=@(x) subs(fd,d,x);
y=zeros(10^4,1);
for i=1:10^4
    y(i)=Fd(X(i));
end
[~,ayuda]=min(y);
sd=X(ayuda);

Ff=@(x) subs(ff,f,x);
y=zeros(10^4,1);
for i=1:10^4
    y(i)=Ff(X(i));
end
[~,ayuda]=min(y);
sf=X(ayuda);

