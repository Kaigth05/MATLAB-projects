function M = matriup3ex1(n)
    v = zeros(n,n);
    for i=[1:n]
        v(1,i)=i;
        v(i,1)=i;
        v(i,n)=n-i+1;
        v(n,i)=n-i+1;
    end
    M=v;
end