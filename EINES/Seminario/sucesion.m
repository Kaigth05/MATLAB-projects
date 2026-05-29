function  v = sucesion(n)
v=zeros(1,n);
v(1)=1;
for i=2:n
    v(i)=sqrt(1+2*(v(i-1)^3))/(1+v(i-1));
end
% (A) Dado el vector construido por sucesion(50), observamos que 
% no hay diferencias visibles entre sus valores, luego podemos afirmar que:
% limit(a_n - a_(n-1) = 0 --> sucesión convergente.
% (B.1) Supongamos que la sucesión es decreciente: x_n < x_(n-1);
% (sea x_(n-1) = x) eso es equivalente a sqrt(1+2*x^3)/(1+x)<x, 
% % equivalente a 1+2*x^3 < (x^2+x)^2, equivalente a 1 < x^4+x^2,
% equivalente pues a 0 < x^4 +x^2 -1 sii abs(x) > 7.861514e-01 raíz de la
% función si la metemos en MatLab; luego como podemos observar que la función
% es decreciente en todos sus términos al ser x_1=1.
% Por tanto, sus términos siguientes se encontrarán por
% debajo de x_1 máximo de la función, y por encima de 7.861514e-01, que
% será su ínfimo --> sucesión bien definida.
% (B.2) Entonces como acotada inferiormente y decreciente --> converge a su
% ínfimo, que en este caso será 7.861514e-01; valor al que se aproximaba
% sucesion(50).
end
