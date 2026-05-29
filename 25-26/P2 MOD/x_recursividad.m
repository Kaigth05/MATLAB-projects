function r= x_recursividad(n)

a=14.3e-3; b=13.8e-3; e=-8e-3; K=3.75*10^7;
r=zeros(n+1,0); r(1)=2857815;

if n~=1
    for N=1:n
        r(N+1) = r(N) + (a-b+e) * (r(N)) - (a-b+e) / K * (r(N))^2;
    end
end
