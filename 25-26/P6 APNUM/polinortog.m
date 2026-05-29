function [p1,v,k]=polinortog(a,b,n)

syms x
v=zeros(n,1);
k=zeros(n,1);

q_prev2=1;
c=int(x*q_prev2*q_prev2,x,[0 1])/int(q_prev2*q_prev2,x,[0 1]);
q_prev1=x-c;
if n==1
    p1 = q_prev1;
    v(1) = c;
    k(1) = int(1,x,[0 1]);
else
    for i=2:n
        ayuda=q_prev1;
        c=int(x*q_prev1*q_prev1,x,[0 1])/int(q_prev1*q_prev1,x,[0 1]);
        d=int(x*q_prev1*q_prev2,x,[0 1])/int(q_prev2*q_prev2,x,[0 1]);
        q_prev1=(x-c)*q_prev1-d*q_prev2;
        q_prev2=ayuda;
    end
    p1 = q_prev1;
    C = coeffs(p1);
    v = roots(fliplr(C));
    for j=1:n
        f=prod(x-v)/(x-v(j));
        ayuda2=sym2cell(v);
        ayuda2(j)=[];
        k(j) = int(f,x,[0 1])/prod(v(j)-ayuda2);
    end
end
k=k*(b-a);
v=a+(b-a)*v;
p1=prod(x-v);
end
