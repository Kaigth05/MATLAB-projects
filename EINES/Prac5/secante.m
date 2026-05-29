function r = secante(f,b,a,tolx,tolf,nmax)
format long e;
r(1) = b;
r(2) = a;
i = 3;
while abs(r(i-1)-r(i-2)) > tolx && abs(f(r(i-1))) > tolf && i <= nmax
    r(i) = r(i-1) - (f(r(i-1))/(f(r(i-1))-f(r(i-2))))*(r(i-1)-r(i-2));
    if f(r(i)) == 0
            break;
    end
    i = i+1;
end
      