function b=goldbach(n)
b = 1;
i = 4;
j = 2;
while i <= 2*n && b ~= 0
    e_s = 0;
    while j <= i/2 && e_s ~= 1
        if es_primo(j) == 1 && es_primo(i-j) == 1
            fprintf('%d = %d + %d\n', i, j, i-j);
            e_s = 1;
        else
            j = j+1;
        end
    end
    if e_s == 0
        b = 0;
    else
        j = 2;
        i = i+2;
    end
end

end
        