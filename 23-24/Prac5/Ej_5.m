function Ej_5
    archivo = fopen('tabla_ej5.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'\\multirow{2}{*}{n} & ');
    fprintf(archivo,'\\multicolumn{3}{|c|}{$Ratio:\\displaystyle\\frac{\\abs{\\pi_{n+2}-\\pi_{n+1}}}{{\\pi_{n+1}-\\pi_n}}$} \\\\');
    fprintf(archivo,'\n\\cline{2-4}\n');
    fprintf(archivo,' & Euler & Gauss & Viete \\\\');
    fprintf(archivo,'\n\\hline\n');
    [b,g,v]=aprox_pi(20);
    for i=1:18
        r_b=(b(i+2)-b(i+1))/(b(i+1)-b(i));
        fprintf(archivo,'%2d & %.4f & ',i,r_b);
        r_g=(g(i+2)-g(i+1))/(g(i+1)-g(i));
        r_g=abs(r_g);
        fprintf(archivo,'%.4f & ',r_g);
        r_v=(v(i+2)-v(i+1))/(v(i+1)-v(i));
        fprintf(archivo,'%.4f \\\\ \n ',r_v);
    end
    fprintf(archivo,'\\hline \n');
    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
end