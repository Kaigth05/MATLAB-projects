function inv_hilbn
for n=2:12
    eval ("Hinv"+n +" = (hilb(n))^-1;");
    H=zeros(n);
    for i=1:n
        for j=1:n
            H(i,j) = (-1)^(i+j) *(i+j-1)*nchoosek(n+i-1, n-j)*nchoosek(n+j-1, n-i);
            H(i,j) = H(i,j)*(nchoosek(i+j-2, i-1))^2;
        end
    end
    eval ("pHinv"+n +" = H;");
end