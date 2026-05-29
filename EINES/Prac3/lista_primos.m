function v=lista_primos(n)

a = zeros(1,n);
num = 0;
for i = 1:n
    if es_primo(i) == 1
        num = num + 1;
        a(num) = i;
    end
end
v =a (1,1:num);
end
