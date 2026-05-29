function v=difdivgen(f,x)

l=length(x);
A = zeros(l, l);

A(:,1) = f;

for j=2:l
    for i=j:l
        if x(i-j+1)==x(i)
            A(i,j) = A(i,j-1) /(j-1);
        else
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
end

v=diag(A);

end