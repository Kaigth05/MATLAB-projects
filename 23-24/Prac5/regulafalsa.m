function r = regulafalsa(f, a, b, tol, nmax)
format long e;
i = 1;
while abs(a-b) > tol && i <= nmax
    fa=f(a);
    fb=f(b);
    r(i) = abs(fa)*b/(abs(fa)+abs(fb)) + abs(fb)*a/(abs(fa)+abs(fb));
    fr=f(r(i));
    if fr*fa > 0
        a = r(i);
    else 
        if fr*fa < 0
            b = r(i);
        else
            break;
        end
    end
    i= i+1;
end