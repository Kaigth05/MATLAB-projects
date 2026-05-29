%% Inputs
syms f1 f2 x
f1=log(1/(1+x));
f2=exp(x);

X=0:10;
F1=zeros(11,1);
F2=zeros(11,1);

for i=1:11
    F1(i) = subs(f1, x, X(i));
    F2(i) = subs(f2, x, X(i));
end
%% Comprobaciones
sol1=lagrangme(F1,X,x);
sol2=lagrangme(F2,X,x);
ayuda=0;
for n=1:11
    ayuda = ayuda+(F1(n)-subs(sol1,x,X(n)));
end

ayuda2=0;
for n=1:11
    ayuda2 = ayuda2+(F2(n)-subs(sol2,x,X(n)));
end

% Calculate the mean squared error for both functions
mse1 = ayuda^2 / 11;
mse2 = ayuda2^2 / 11;

if mse1+mse2==0
    display("Todo perfecto :D");
else
    display("Algo falla :c");
end