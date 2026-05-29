function [x,r,it,t] = jacobi_semin(A,b,x0,maxits,tol)
tic();
n=length(b);
x=x0;
it=0;
[X,Y]=size(A);
[X1,Y1]=size(b);
[X2,Y2]=size(x0);
if tol >= 0 && maxits >= 1
    if X==Y
        if X1==X && X2==X && Y1==1 && Y2==1
            if prod(diag(A))~=0
                while (it<maxits)
                for i=1:n
                x(i) =(b(i)-A(i,1:i-1)*x0(1:i-1)-A(i,i+1:n)*x0(i+1:n))/A(i,i);
                end
                r(it+1)=norm(x0-x,'inf')/norm(x,'inf');
                if r(it+1)<tol
                    break;
                end
                x0=x;
                it=it+1;
                end
                if it==maxits
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
t=toc();
end