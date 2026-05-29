function[lambda,y]=met_potencia_0(A,x,tol,maxits)
y=x;
[X,Y]=size(A);
[X1,Y1]=size(X);
if X==Y
    if x1==X && Y1=1
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
            else
                disp("Se ha puesto un máximo  ");
        else
            disp("tolerancia negativa");
    else
        disp("x no es un vector columna compatible con A");
else
    disp("Su matriz no es cuadrada");
end