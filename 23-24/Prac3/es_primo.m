function b=es_primo(n)

p = factor(n);
if max(p) == n
   b=1;
else
   b=0;
end

end
