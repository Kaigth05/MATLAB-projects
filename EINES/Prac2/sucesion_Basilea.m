function b=sucesion_Basilea(n)
aux=1:n;
aux(1,:)=aux(1,:).^2;
aux(1,:)=1./aux(1,:);
b=sum(aux);
b=sqrt(6*b);
end