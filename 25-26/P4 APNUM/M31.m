function sa=M31(N,x)

syms t f
f=(1)/(1+t^2);
X=linspace(-5,5,N);
i=1;
while i<=N
if X(i)-x>0
    A=[X(i-1),X(i)];
    g=diff(f);
    F=[subs(f,t,X(i-1)), subs(g,t,X(i-1)), subs(f,t,X(i)), subs(g,t,X(i))];
    sa=Hermite(F,A,[1,1],x);
    i=N+1;
else
    i=i+1;
end
end