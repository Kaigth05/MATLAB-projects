function sol=lagrangme(F,X,y)

if nargin==2
    syms y
end
syms x lagrange ayuda 
lagrange = 0;
for i=1:length(X)
    ayuda=1;
    for j=1:length(X)
        if j~=i
            ayuda=ayuda*(x-X(j))/(X(i)-X(j));
        end
    end
    lagrange = lagrange + ayuda*F(i);
end
if strcmp(class(y), 'sym')
   sol=subs(lagrange,x,y);  
else
    sol=zeros(length(y),1);
    for j=1:length(y)
        a=y(j);
        sol(j)=subs(lagrange,x,a);
    end
end
end