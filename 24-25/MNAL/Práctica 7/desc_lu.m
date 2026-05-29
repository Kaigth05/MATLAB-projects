function [L, U] = desc_lu(A)

[m,n]=size(A);
if m==n
    if det(A)~=0
        L=eye(n);
        for k=1:n-1
            if A(k,k)~=0
                for i=k+1:n
                    alpha=-A(i,k)/A(k,k);
                    A(i,:)=A(i,:)+alpha*A(k,:);
                    A(i,k)=0;
                    L(i,k)=-alpha;
                    U=A;
                end
            else
                break;
                disp("Tiene pivote cero durante el proceso");
            end
        end
    else
        disp("No es invertible");
    end
else
    disp("No es cuadrada");
end

end