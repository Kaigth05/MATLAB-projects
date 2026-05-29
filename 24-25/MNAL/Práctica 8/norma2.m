function r=norma2(A)
x=ones(size(A,2),1);
tol=1e-4;
maxits=1e4;
A=A'*A;
a=met_potencia_2(A,x,tol,maxits);
r=sqrt(abs(a));
end