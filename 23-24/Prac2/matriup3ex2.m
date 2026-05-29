function N = matriup3ex2(6)
    a = length(w);
    m = zeros(a,a);
    for k = [1:a]
        m(1,k)=w(k);
    end
    for i = [2:a]
        for j = [1:i-1]
            m(i,j)=w(a-i+j+1);
        end
        for l = [i:a]
            m(i,l)=w(l-i+1);
        end
    end
    N = m;
end