function gs_pi
[b,g,v]=aprox_pi(20);
b=abs(pi-b);
g=abs(pi-g);
v=abs(pi-v);
x=1:20;

tiledlayout(2,1)
nexttile
    semilogy(x,b,x,g,x,v);
    grid on
    title('semilogy')
    legend('Basilea','Gauss','Viète')
nexttile
    loglog(x,b,x,g,x,v);
    grid on
    title('loglog')
    legend('Basilea','Gauss','Viète')

end