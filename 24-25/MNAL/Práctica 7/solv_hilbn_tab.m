function solv_hilbn_tab
archivo = fopen('tablas.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\usepackage{tabularx}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabularx}{400pt}{c|c|c}\n');
    fprintf(archivo,' $n$ & ${\\|\\|e_n\\|\\|}_2 / {\\|\\|x_n\\|\\|}_2$ & $k_2(H_n)$ \\\\');
    fprintf(archivo,'\n\\hline\n');
    for n=2:12
        [L,U]=desc_lu(hilb(n));
        y=subsprog(L,hilb(n)*ones(n,1));
        x=subsreg(U,y);
        fprintf(archivo,'%2d & %.6e & %.6e \\\\',n,norm(ones(n,1)-x)/sqrt(n), cond(hilb(n)));
        fprintf(archivo,'\n \\hline \n');
    end
    fprintf(archivo,'\\end{tabularx}\n');

    fprintf(archivo,'\\begin{tabularx}{400pt}{c|c|c}\n');
    fprintf(archivo,' $n$ & ${\\|\\|e_n\\|\\|}_\\infty / {\\|\\|x_n\\|\\|}_\\infty$ & $k_\\infty(H_n)$ \\\\');
    fprintf(archivo,'\n\\hline\n');
    for n=2:12
        [L,U]=desc_lu(hilb(n));
        y=subsprog(L,hilb(n)*ones(n,1));
        x=subsreg(U,y);
        fprintf(archivo,'%2d & %.6e & %.6e \\\\ ',n,norm(ones(n,1)-x, inf),cond(hilb(n),inf));
        fprintf(archivo,'\n \\hline \n');
    end
    fprintf(archivo,'\\end{tabularx}\n');
    fprintf(archivo,'\\end{document}\n');
end