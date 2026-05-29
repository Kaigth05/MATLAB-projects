function tablabis (a)
    archivo = fopen('tablaid.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'\\multirow{2}{*}{n} & ');
    fprintf(archivo,['\\multicolumn{3}{|c|}{$Ratio:\\displaystyle\\' ...
        'frac{\\abs{\\pi_{n+1}-\\pi^*}}{({\\pi_{n}-\\pi^*})^p}$} \\\\']);
    fprintf(archivo,'\n\\cline{2-4}\n');
    fprintf(archivo,' & $p=1$ & $p=2$ & $p=\\Phi$ \\\\');
    fprintf(archivo,'\n\\hline\n');
    l=length(a);
    for i=2:l-1
        r_a1=abs(a(i+1)-2)/abs(a(i)-2);
        fprintf(archivo,'%2d & %.4f & ',i-1,r_a1);
        r_a2=abs(a(i+1)-2)/abs(a(i)-2)^2;
        r_a2=abs(r_a2);
        fprintf(archivo,'%.4f & ',r_a2);
        r_aphi=abs(a(i+1)-2)/abs(a(i)-2)^((1+sqrt(5))/2);
        fprintf(archivo,'%.4f \\\\ \n ',r_aphi);
    end
    fprintf(archivo,'\\hline \n');
    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
end