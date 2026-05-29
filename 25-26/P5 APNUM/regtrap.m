function sol=regtrap(f,a,b,N)

h = (b - a) / N; % Calculate the width of each rectangle
x = a:h:b; % Create an array of x values from a to b
y = f(x); % Evaluate the function at each x value
if N==1
    sol = h/2*(f(a)+f(b)); %Simple trapeze method
else
    sol = (y(1)+y(end))*h/2 + sum(y(2:end-1) * h); % Calculate the area using the trapeze method
end

end