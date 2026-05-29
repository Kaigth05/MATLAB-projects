function sa=vM10(F,A,x)
i=2;
while i<=N
if A(i)-x>0
    a=[A(i-1),A(i)];
    f=[F(i-1),F(i)];
    sa=lagrangme(f,a,x);
    i=N+1;
else
    i=i+1;
end
end
end