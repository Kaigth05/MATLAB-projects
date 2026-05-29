function e=euler_limit(n)
    e = zeros(1,n);
    e = e+1;
    for m = [1:n]
        e(m)=(1+1/m)^m;
    end
end