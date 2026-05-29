function N=valors(M)
N=0;
[x,y]=size(M);
for i=1:x
    for j=1:y
        if M(i,j) > 0 && M(i,j) < 1
            N=N+1;
        end
    end
end
end