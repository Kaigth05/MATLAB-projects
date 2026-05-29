function[L,U,P] = desc_lu_piv2(A)
 [~,n]=size(A);
 L=eye(n);
 sigma=(1:n)';
 for k=1:n-1
     [~,i] = max(abs(A(k:n,k)));
     i=i+(k-1);
     if(i~=k)
         A( [i,k],:)=A([k,i],:);
         sigma([i,k])=sigma([k,i]);
         for j=1:k-1
            L([i,k],j)=L([k,i],j);
         end
     end
     L(k+1:n,k)=A(k+1:n,k)/A(k,k);
     A(k+1:n,k)=zeros(n-k,1);
     for j=k+1:n
        A(j,k+1:n)=A(j,k+1:n)-L(j,k)*A(k,k+1:n);
     end
 end
 U=A;
 P=obtener_matriz_permutacion(sigma);
 