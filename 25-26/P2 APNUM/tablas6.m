function tablas6
syms x
f=exp(x);
    archivo = fopen('tabla.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'N & Error inicial & Error Chebyshev & E.Teoria.I & E.Teoria.C \\\\');
    fprintf(archivo,'\n\\hline\n');

    for n=1:20
    X1=zeros(n+1,1); 
    F1=zeros(n+1,1);
    X2=-4:4/n:0;
    X2=X2';
    F2=zeros(n+1,1);
    for i=1:n+1
        X1(i)=2*cos((2*i-1)/(2*(n+1))*pi)-2;
        F1(i)=subs(f,x,X1(i));
        F2(i)=subs(f,x,X2(i));
    end
    sol1=lagrangme(F1,X1,x);
    sol2=lagrangme(F2,X2,x);

    ayuda=linspace(-4,0,100);
    abs1=zeros(100,1);
    abs2=zeros(100,1);
    for j=1:100
        abs1(j)=abs(subs(f,x,ayuda(j))-subs(sol1,x,ayuda(j)));
        abs2(j)=abs(subs(f,x,ayuda(j))-subs(sol2,x,ayuda(j)));
    end
    abs1=sort(abs1,'descend');
    abs2=sort(abs2,'descend');

    absn=abs1(1); absc=abs2(1);
    et1=(4^(n+1))/factorial(n+1);
    et2=(2)/factorial(n+1);
    fprintf(archivo,'%2d & %.4e & %.4e & %.4e & %.4e \\\\ \n ',n, absc,absn,et1,et2);
    end
    fprintf(archivo,'\\hline \n');
    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
end