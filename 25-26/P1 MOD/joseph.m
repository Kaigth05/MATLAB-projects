function sol=joseph(n)

a=zeros(n,1);
for i=1:n
    a(i)=i;
end
b=0;
ayuda=n;

while ayuda>1
    b=b+2;
    if b>length(a)
        b=b-length(a);
        a=sort(a);
        j=1;
        while a(j)==0
            a(j)=[];
        end
    end
    a(b)=0;
    ayuda=ayuda-1;
end
a = sort(a, 'descend');
sol=a(1);
end