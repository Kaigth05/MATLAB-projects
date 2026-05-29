function tablas4
    archivo = fopen('tablas.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');

    fprintf(archivo,['Modelo & N minima para e^x & Error del programa' ...
        ' & N minima para $\\frac{4}{1+x^2}$ & Error del programa \\\\']);
    fprintf(archivo,'\n\\hline\n');

    N1r=13592; N1t=48; N1s=2; N2r=12991; N2t=82; N2s=4; f=@(x)exp(x);g=@(x)4./(1+x.^2);
    fprintf(archivo, 'Rectangulo & %d & %.5e & %d & %.5e \\\\ \n', N1r, ...
        abs(regrect(f,0,1,N1r) - integral(f,0,1)), N2r, abs(regrect(g,0,1,N2r) - integral(g,0,1)));
    fprintf(archivo,'\\hline\n');

    fprintf(archivo, 'Trapecio & %d & %.5e & %d & %.5e \\\\ \n', N1t, ...
        abs(regtrap(f,0,1,N1t) - integral(f,0,1)), N2t, abs(regtrap(g,0,1,N2t) - integral(g,0,1)));
    fprintf(archivo,'\\hline\n');

    fprintf(archivo, 'Simpson & %d & %.5e & %d & %.5e \\\\ \n', N1r, ...
        abs(regsimp(f,0,1,N1s) - integral(f,0,1)), N2s, abs(regsimp(g,0,1,N2s) - integral(g,0,1)));
    fprintf(archivo,'\\hline\n');

    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
end