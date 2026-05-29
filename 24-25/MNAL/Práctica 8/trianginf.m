function stop=trianginf(A)

stop=false;
[x,y]=size(A);
i=1;
if(prod(diag(A))==0)
        stop=true;
else
    while(stop==false && i<=x)
        j=i+1;
        if(i<j && j<=y && A(i,j)~=0)
            stop=true;
        elseif(i<j && j<=y && A(i,j)==0)
            j=j+1;
        end
        i=i+1;
    end
end
