function [t,x] = epa(f,t0,x0,N,tf)

h=(tf-t0)/N ;

t=zeros(N+1, 1);
x=zeros(N+1, 1);
t(1)=t0;
x(1)=x0;


for n=1:N
    t(n+1)=t(n)+h;
    x(n+1)=x(n)+ h*f(t(n),x(n));
    if(abs(t(n+1))<=abs(x(n+1)))
        error('Ha habido un error en el paso: %2d y hemos obtenido los valores tn= %.6e y xn= %.6e',n+1, t(n+1), x(n+1))
    else
        n=n+1;
    end
end
