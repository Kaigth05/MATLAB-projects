function sol=regsimp(f,a,b,N)

h = (b - a) / N; % Calculate the width of each rectangle
x = a:h/2:b; % Create an array of x values from a to b
y = f(x); % Evaluate the function at each x value
if N==1
    m=(a+b)/2;
    sol = h/6*(f(a)+4*f(m)+f(b)); %Simple Simpson method
else
    sol = h/6*(y(1)+y(end)+2*sum(y(3:2:end-2))+4*sum(y(2:2:end-1))); % Calculate the area using the Simpson method
end

end