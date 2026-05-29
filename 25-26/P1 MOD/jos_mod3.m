function sor=jos_mod3(n)

a=zeros(n,1);
sor=zeros(n,1);
cont=0;
for i=1:n
    a(i)=i;
end
b=0;
ayuda=n;

while ayuda>1
    b=b+3;
    while b>length(a)
        b=b-length(a);
        a=sort(a);
        j=1;
        while a(j)==0
            a(j)=[];
        end
    end
    cont=cont+1;
    sor(cont)=a(b);
    a(b)=0;
    ayuda=ayuda-1;
end
a = sort(a, 'descend');
cont=cont+1;
sor(cont)=a(1);
end