function[lambda,y]=met_potencia_1(A,x,tol,maxits)

y=x;
[X,Y]=size(A);
[X1,Y1]=size(x);
if X==Y
    if X1==X && Y1==1
        if tol >0
            if maxits >= 1
                    for n=1:maxits
                      y_next=A*y;
                      lambda=(y'*y_next)/(y'*y);
                      if(n>1 && abs(lambda-lambda_anterior)<tol)
                        break;
                      end
                      y=y_next;
                      lambda_anterior=lambda;
                    end
                    if n==maxits
                        warning('Atencion: maximo de iteraciones');
                    end
            else
                disp("Se ha puesto un máximo de iteraciones no válido");
            end
        else
            disp("tolerancia negativa");
        end
    else
        disp("x no es un vector columna compatible con A");
    end
else
    disp("Su matriz no es cuadrada");
end

end