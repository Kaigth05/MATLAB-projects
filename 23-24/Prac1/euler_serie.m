function f=euler_serie(n)
    f=1;
    e = zeros(1,n);
    e = e+1;
    for m = [1:n]
        for k= [1:m]
            e(m)=e(m)/k;
        end
    end
    for l = [1:n]
        f=f+e(l);
    end
end