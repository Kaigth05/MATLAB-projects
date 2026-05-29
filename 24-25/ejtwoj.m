function X=ejtwoj(L,U)
b = [1; 2; 3];
Y = subsprog(L,b);
X = subsreg(U,Y);
end
