function aproximaciones_euler

for x=[1:20]
    y= euler_limit2(x);
    z= euler_serie2(x);
    fprintf('n=%02d,', x);
    fprintf(' euler limit=%18.16f, ', y(x));
    fprintf(' euler serie=%18.16f, \n', z);
end

end

