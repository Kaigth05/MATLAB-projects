function [b,g,v]=aprox_pi(N)
v=zeros(1,N); 
g=v; 
b=g;
for i=1:N
    b(i)=sucesion_Basilea(i);
    g(i)=sucesion_Gauss(i);
    v(i)=sucesion_Viete(i);
end
