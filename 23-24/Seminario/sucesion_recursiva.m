function x = sucesion_recursiva(n)
if n ~= 1
    x = sqrt(1+2*(sucesion_recursiva(n-1)^3))/(1+sucesion_recursiva(n-1));
else
    x = 1;
end
end
