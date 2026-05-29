%% Práctica 5
%% Ej 5.1.a
% Hacer código
%% Ej 5.1.b
% Trivial para el lector interesado y si va todo bien,
% debería de dar con n genérica 2/3*n^3 - 1/2*n^2 - 1/6*n
%% Ej 5.1.c 
% Datos:
A1= [4, 1 1 1;
 1 3 0 0;
 1 0 2 0;
 1 0 0 1];
n=2;
A2 = diag(2*ones(n,1)) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);
n=3;
A3 = diag(2*ones(n,1)) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);
n=4;
A4 = diag(2*ones(n,1)) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);

[L1,U1]=desc_lu(A1)
[L2,U2]=desc_lu(A2)
[L3,U3]=desc_lu(A3)
[L4,U4]=desc_lu(A4)

if L1*U1 - A1 ==0 
    if L2*U2 - A2 ==0 
        if L3*U3 - A3 ==0 
            if L4*U4 - A4 ==0 
                disp("tot be");
            end
        end
    end
end

%% Ej 5.2.a
% Hacer código
%% Ej 5.2.b
% Comprobemos que desc_lu_compacta da
% las matrices de la descomposición LU
% usando la matriz A1 de prueba.
B=desc_lu_compacta(A1);
L=tril(B,-1)+diag(ones(4,1));
U=triu(B);
if L-L1==0 
    if U-U1==0
        disp("tot be");
    end
end
%% Ej 5.3.a
% Hacer código
%% Ej 5.3.b
% Creamos un generador de matrices de la forma definida
Tlap=zeros(1,11);
Tlu=zeros(1,11);
Dlap=zeros(1,11);
Dlu=zeros(1,11);
for n=1:11
    A=eye(n);
    if n~=1
        for i=1:n-1
            A=A+diag(diag((1/2)^i*eye(n-i)),-i)+diag(diag((1/2)^i*eye(n-i)),i);
        end
    end
    tic
    Dlu(n)=det_lu(A);
    Tlu(n)=toc;
    tic
    Dlap(n)=det_laplace(A);
    Tlap(n)=toc;
end
tictoc_tab(Dlu, Dlap, Tlu, Tlap);
