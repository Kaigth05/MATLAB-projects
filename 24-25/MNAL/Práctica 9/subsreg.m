function X=subsreg(A,b)

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
                if triangsup(A)==false
                    X(x)= b(x)/A(x,x);
                    for i=x-1:-1:1
                        X(i)=(b(i,1)-A(i,i+1:x)*X(i+1:x))/A(i,i);
                    end
                else
                    disp("No es triangular superior");
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
