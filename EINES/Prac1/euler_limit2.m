function e=euler_limit2(n)
    e = [1:n];
    f=1./e;
    g=(1+f).^e;
    e=g;
end