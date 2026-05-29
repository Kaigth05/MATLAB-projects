function X=subsprogbi(A,b)

[x,y]=size(A);
[x1,y1]=size(b);
X=zeros(x,1);
if(x1<y1)
    b=b.';
    [x1,y1]=size(b);
end

if(x==y) 
    if x==x1 
        if y1==1 
            if det(A)~=0 
                if bidiag(A)==false
                    X(1)= b(1)/A(1,1);
                    for i=2:x
                        X(i)=(b(i,1)-A(i,x-1)*X(x-1))/A(i,i);
                    end
                else
                    disp("No es bidiagonal");
                end
            else
                disp("No es invertible");
            end
        else
            disp("No es válida la solución");
        end
    else
        disp("No hay mismo número de filas");
    end
else
    disp("No es cuadrada");
end
