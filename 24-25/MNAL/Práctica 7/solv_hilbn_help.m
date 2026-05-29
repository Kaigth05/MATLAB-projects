function s=solv_hilbn_help
s=zeros(12,11);
for i=2:12
    eval ("H"+i +" = hilb(i);");
    eval ("b"+i +" = hilb(i)*ones(i,1);");
    [L,U]=desc_lu(hilb(i));
    y=subsprog(L,hilb(i)*ones(i,1));
    x=subsreg(U,y);
    a=[x;zeros(12-i,1)];
    s(:,i-1) = a;
end