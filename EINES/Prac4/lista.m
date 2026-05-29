function v=lista(n)
v = 1:n;
cont = 0;
for i=2:floor(sqrt(n))
    for j=2:floor(n/i)
        v(i*j) = 0;
    end
end
for k=1:n
    if v(k)==0
        cont = cont +1;
    end
end
v=sort(v);
v=v(cont+2:n);
end
    

