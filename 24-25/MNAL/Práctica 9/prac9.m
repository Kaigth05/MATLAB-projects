%% Práctica 9
n=4;
A=rand(n)+n*eye(n);
b=ones(n,1);
x0=zeros(n,1);
tol=1e-4;
maxits=1e+4;
x=A\b
%% Ej 9.1.a & 9.2.a
x_j=jacobi_fin(A,b,x0,tol,maxits)
if abs(x-x_j) < tol
    disp("Tot be");
end
x_g=gauss_seidel_fin(A,b,x0,tol,maxits)
if abs(x-x_g) <= tol
    disp("Tot be");
end
