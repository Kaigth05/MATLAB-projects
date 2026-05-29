function r = raphson(f,x0,tolx,tolf,nmax)
format long e;
df = matlabFunction(diff(sym(f)));
r(1) = x0;
r(2)= x0 - f(x0)/df(x0);
i = 3;
while abs(r(i-1)-r(i-2)) > tolx && abs(f(r(i-1))) > tolf && i <= nmax
    r(i) = r(i-1) - f(r(i-1))/df(r(i-1));
    if f(r(i)) == 0
            break;
    end
    i = i+1;
end