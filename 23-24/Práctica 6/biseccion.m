function r = biseccion(f,a,b,tol)
format long e;
i = 1;
m = ceil(abs(log2(abs(a-b)/tol)));
while abs(a-b) > tol && i <= m
    r(i) = (a+b)/2;
    fr=f(r(i));
    fa=f(a);
    fb=f(b);
    if fr*fb < 0
        a= r(i);
    else 
        if fr*fa < 0
            b = r(i);
        else
            break;
        end
    end
    i = i+1;
end
      