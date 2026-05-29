function sol=taylorme(f,n,x0,y)

if nargin==2
    x0=0;
    syms y
end
syms x
syms fsim taylor t
taylor = 0;
fsim=subs(f,x,t);
for i=0:n
    taylor=taylor + (subs(fsim,t,x0)/factorial(i))*(t-x0)^i;
    fsim=diff(fsim, t, 1);
end
if strcmp(class(y), 'sym')
   sol=taylor;  
else
    sol=zeros(length(y),1);
    for j=1:length(y)
        a=y(j);
        sol(j)=subs(taylor,t,a);
    end
end
end