%% Ejercicio 1
% datos
L = [1 0, 0, 0;
    3/7, 1, 0, 0;
    -2/3, 2, 1, 0;
    0, -0.75, 0, 1];
U = [7 3/2 1 -1;
    0 27/11 0 12/19;
    0 0 -2/5 0;
    0 0 0 1];
% identidad
I=eye(4);
e1=I(:,1);
e2=I(:,2);
e3=I(:,3);
e4=I(:,4);

%% Apartado a)
% Como en L tenemos - alpha(l,k):
M1 = I - [0; L(2:4,1)]*(e1)'
M2 = I - [0; 0; L(3:4,2)]*(e2)'
M3 = I - [0; 0; 0; L(4,3)]*(e3)'

%% Apartado b)
% Comprobemoslo
M3*M2*M1*(L*U)-U == zeros(4);

%% Ejercicio 2
% datos
n=2;
A2 = diag(2*ones(n,1)) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);
n=3;
A3 = diag(2*ones(n,1)) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);
n=4;
A4 = diag(2*ones(n,1)) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);

%% Apartado a)
% datos
A=A4;
b=diag(A);
c=diag(A,1);
a=[0;diag(A,-1)];

l=zeros(n-1,1);
v=zeros(n,1);

% proceso
l(1) = 0;
v(1) = b(1);
for i=2:n
    l(i) = a(i)/v(i-1);
    v(i) = b(i) - l(i)*c(i-1);
end
U = diag(v) + diag(c,1);
L= eye(n) + diag(l(2:n),-1);