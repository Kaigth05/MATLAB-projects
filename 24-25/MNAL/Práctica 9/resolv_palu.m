function x=resolv_palu(A,b)
[L,U] = desc_lu(A);
y = subsprog(L,b);
x = subsreg(U,y);
end
