function pol=Hermite(F,X,M,y)

syms x pol ayuda 
pol = 0;

A=[];
for i = 1:length(X)
    A = [A; repmat(X(i), M(i)+1, 1)];
end

v=ndifdivgen(F,X);

pol=v(1);
ayuda=1;
for i=2:length(v)
    ayuda=ayuda*(x-A(i-1));
    pol = pol + ayuda*v(i);
end
pol=subs(pol,x,y);  
end