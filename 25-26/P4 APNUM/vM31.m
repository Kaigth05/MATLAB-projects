function sa=vM31(F,A,m,x)
i=2;
while i<=N
if A(i)-x>0
    a=[A(i-1),A(i)];
    ayuda=sum(m(1):m(i))+i;
    f=F(ayuda-m(i)-m(i-1)-1):F(ayuda);
    sa=Hermite(f,a,m,x);
    i=N+1;
else
    i=i+1;
end
end
end