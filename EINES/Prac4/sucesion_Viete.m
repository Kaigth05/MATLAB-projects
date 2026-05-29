function v=sucesion_Viete(n)
aux=zeros(1,n);
aux(1)=1;
aux(2)=sqrt(2);
for i=3:n
    aux(i)=sqrt(2+aux(i-1));
end
aux(1,:)=2./aux(1,:);
if n~=1
    v=prod(aux);
else
    v=2;
end