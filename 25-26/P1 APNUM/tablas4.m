function tablas4 
syms x f
f=cos(2*x);
    archivo = fopen('tablas.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'n & $T_{x_0}^n (f)(2)$ & $\\abs{f(2)-T_{x_0}^n (f)(2)}$ \\\\');
    fprintf(archivo,'\n\\hline\n');
    for i=0:20
        im=taylorme(f,i,0,2);
        fprintf(archivo,'%2d & %.4f & ',i,im);
        error=abs(subs(f,x,2)-im);
        fprintf(archivo,'%.4f \\\\ \n ',error);
    end
    fprintf(archivo,'\\hline \n');
    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
end