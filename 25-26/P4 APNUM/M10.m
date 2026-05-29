function sa=M10(N,x)

X=linspace(-5,5,N);
i=1;
while i<=N
if X(i)-x>0
    A=[X(i-1),X(i)];
    f=1./(1+A.^2);
    sa=lagrangme(f,A,x);
    i=N+1;
else
    i=i+1;
end
end