function solv_hilbn
for i=2:12
    eval ("H"+i +" = hilb(i);");
    eval ("b"+i +" = hilb(i)*ones(i,1);");
    [L,U]=desc_lu(hilb(i));
    y=subsprog(L,hilb(i)*ones(i,1));
    x=subsreg(U,y);
    eval ("L"+i +" = L");
    eval ("U"+i +" = U");
    eval ("x"+i +" = x");
end