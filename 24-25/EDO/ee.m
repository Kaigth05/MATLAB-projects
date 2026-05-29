function [t,x] = ee(f,t0,x0,N,tf)
% INPUT:
% f: funcion EDO, tipo handle
% t0,x0 datos iniciales
% N = numero de intervalos de la malla
% OUTPUT:
% [t0,tf] intervalo computacional, con tf>t0
% t = vector que contiene la malla computacional
% x = vector que contiene la solucion aproximada
% EJEMPLO:
% [t,x] = ee( @(t,x) 1+t*x, 0, 0, 10, 1 )

h=(tf-t0)/N ; % paso de malla

% datos iniciales
t=zeros(N+1, 1);
x=zeros(N+1, 1);
t(1)=t0;
x(1)=x0;

% Bucle de calculo de la solucion aproximada
for n=1:N
    t(n+1)=t(n)+h;
    x(n+1)=x(n)+ h*f(t(n),x(n));
end
