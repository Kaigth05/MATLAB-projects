function sol=regrect(f,a,b,N)

h = (b - a) / N; % Calculate the width of each rectangle
x = a:h:b; % Create an array of x values from a to b
y = f(x); % Evaluate the function at each x value
sol = sum(y(1:end-1) * h); % Calculate the area using the rectangle method

end