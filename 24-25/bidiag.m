function stop=bidiag(A)

stop=false;
[x,y]=size(A);
if prod(diag(A))==0 
    stop=true;
elseif prod(diag(A(2:x,1:y-1)))==0 
    stop=true;
end
