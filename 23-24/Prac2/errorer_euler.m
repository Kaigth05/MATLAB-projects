function errorer_euler

for x=[1:20]
    y= euler_limit2(x);
    z= euler_serie2(x);
    fprintf('n=%02d,', x);
    fprintf(' euler limit=%12.6e, ', exp(1)-y(x));
    fprintf(' euler serie=%12.6e, \n', exp(1)-z);
end

end