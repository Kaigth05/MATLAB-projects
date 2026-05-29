%% Inputs
syms f1 f2 f3 f4 x t
f1=cos(2*x);
f2=1/(1-x);
f3=x^2+2*x+1;
f4=log(1+x);

x0=0;

x1=x;
x2=[0,1/4,1/2,3/4];
x3=x;
x4=[0,1/2,1];

%% Comprobaciones
s1= subs(f1,x,2);
sol1=zeros(5,1);
for n=0:2:8
    sol1(n/2+1)=abs(s1-subs(taylorme(f1,n,x0,x1),t,2));
end
sol1

s2=zeros(4,1);
for i=1:4
    s2(i)= subs(f2,x,x2(i));
end
sol2=zeros(4,1);
for n=1:4
    sol2(n)=abs(s2(n)-subs(taylorme(f2,4,x0,x2(n))));
end
sol2

sol3=subs(f3,x,t)-taylorme(f3,2,0,x3)

s4=zeros(2,1);
for i=1:2
    s4(i)= subs(f4,x,x4(i));
end
sol4=zeros(2,1);
for n=1:2
    sol4(n)=abs(s4(n)-subs(taylorme(f4,4,x0,x4(n))));
end
sol4