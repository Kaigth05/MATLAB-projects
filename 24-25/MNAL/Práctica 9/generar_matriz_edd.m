function A = generar_matriz_edd(n)
A=eye(n);
if n~=1
   for i=1:n-1
       A = A + diag(diag((1/2)^i*eye(n-i)),-i) + diag(diag((1/2)^i*eye(n-i)),i);
   end
   A=A.*A;
end