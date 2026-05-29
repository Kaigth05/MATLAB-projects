function P=obtener_matriz_permutacion(sigma)
[n,~]=size(sigma);
P=zeros(n);
for j=1:n
    P(j,sigma(j))=1;
end
