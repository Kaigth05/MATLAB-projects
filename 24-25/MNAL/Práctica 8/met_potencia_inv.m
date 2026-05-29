function [lambda, y]=met_potencia_inv(A, x, tol, maxits)

y=x;
[X,Y]=size(A);
[X1,Y1]=size(x);
if X==Y
    if X1==X && Y1==1
        if tol >0
            if maxits >= 1
                for n=1:maxits
                  [L,U,P] = desc_lu_piv(A);
                  z=subsprog(L,P*x);
                  p=subsreg(U,z);
                  q = x'*p;
                  y_next=p/norm(p,2);
                  if(n>1 && abs(q-q_prev)<tol)
                    break;
                  end
                  y=y_next;
                  q_prev=q;
                end
                lambda = q;
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