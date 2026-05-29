function b=sucesion_Gauss(n)
aux=zeros(1,n);
aux(1)=1;
aux(2)=1/2;
for i=3:n
    if i==2*floor(i/2)
        aux(i)=(aux(i-1)+aux(i-2))/2;
    else
        aux(i)=sqrt(aux(i-1)*aux(i-2));
    end
end
b=2/aux(n);
end