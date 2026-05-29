function stop=triangsup(A)

stop=false;
[x,y]=size(A);
i=1;
if(prod(diag(A))==0)
        stop=true;
else
    while(stop==false && i<=x)
        j=1;
        if(j<i && A(i,j)~=0)
            stop=true;
        elseif(j<i && A(i,j)==0)
            j=j+1;
        end
        i=i+1;
    end
end
