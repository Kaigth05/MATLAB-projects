function tab_euler(listeu)

archivo = fopen('tablas.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\usepackage{tabularx}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabularx}{400pt}{c|c}\n');
    fprintf(archivo,' $n$ & $aprox(n)$ \\\\');
    fprintf(archivo,'\n\\hline\n');
    for n=0:4
        fprintf(archivo,'%2d & %.6e \\\\',n,listeu(n+1));
        fprintf(archivo,'\n \\hline \n');
    end
    fprintf(archivo,'\\end{tabularx}\n');
    fprintf(archivo,'\\end{document}\n');
end