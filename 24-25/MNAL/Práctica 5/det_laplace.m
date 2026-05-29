function d = det_laplace(A)
 [m, n] = size(A);
 if (m ~= n)
 error('La matriz no es cuadrada.');
 end
 if (n == 1)
 d = A(1, 1);
 else
 d = 0;
 for j=1:n
 d = d + (-1)^(1+j)*A(1, j)*det_laplace( A(2:n, [1:j-1, j+1:n]) );
 end
 end