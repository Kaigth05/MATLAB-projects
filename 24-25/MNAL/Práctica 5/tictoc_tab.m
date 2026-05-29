function tictoc_tab(Dlu, Dlap, Tlu, Tlap)

archivo = fopen('tablas.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\usepackage{tabularx}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabularx}{400pt}{c|c|c|c|c}\n');
    fprintf(archivo,' $n$ & $det_lu(A_n)$ & $det_laplace(A_n)$ & $det_lu(A_n)(t)$ & $det_laplace(A_n)(t)$ \\\\');
    fprintf(archivo,'\n\\hline\n');
    for n=1:11
        fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Dlu(n),Dlap(n),Tlu(n),Tlap(n));
        fprintf(archivo,'\n \\hline \n');
    end
    fprintf(archivo,'\\end{tabularx}\n');
    fprintf(archivo,'\\end{document}\n');
end