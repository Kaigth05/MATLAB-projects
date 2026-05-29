function [r,er] = prestam
format long e;
g = @(r,n)(r+1 /((r+1)^n-1))-25/36;
h = @(r) 0*r;
for i=1:36
    h =@(r)(h(r)+g(r,i));
end
r = regulafalsa(h,0.5,2,10^-6,1000);

n = length(r);

aux1 = r(2:n);
aux2 = r(1:n-1);
ea = abs(aux1-aux2);

aux1 = ea(2:n-1);
aux2 = ea(1:n-2);
er = aux1./aux2;

r=r(n);
end
