function x=jacobi_fin(A,b,x0,tol,maxits)
D=diag(diag(A));
N=A-D;
x_prev=x0;
[X,Y]=size(A);
[X1,Y1]=size(b);
[X2,Y2]=size(x0);
if tol > 0 && maxits >= 1
    if X==Y
        if X1==X && X2==X && Y1==1 && Y2==1
            if prod(diag(D))~=0
                for k=1:maxits
                    x=(b-N*x_prev)./diag(D);
                    if(abs(x-x_prev)<tol)
                        break;
                    end
                    x_prev=x;
                end
                if k==maxits
                   warning('Atencion: maximo de iteraciones');
                end
            else
                disp("La diagonal tiene elementos nulos");
            end
        else
            disp("Los elementos no tienen dimensiones factibles")
        end
    else
        disp("A es matriz no cuadrada");
    end
else
    disp("Las condiciones del método no son válidas");
end