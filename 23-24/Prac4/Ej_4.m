function Ej_4
    archivo = fopen('tabla_ej4.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|c|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'\\multirow{2}{*}{n} & \\multicolumn{3}{|c|}{Valor aproximado: $\\pi_n$} &');
    fprintf(archivo,'\\multicolumn{3}{|c|}{Error absoluto: $\\abs{\\pi_n - \\pi}$} \\\\');
    fprintf(archivo,'\n\\cline{2-7}\n');
    fprintf(archivo,' & Euler & Gauss & Viete & Euler & Gauss & Viete \\\\');
    fprintf(archivo,'\n\\hline\n');
    [b,g,v]=aprox_pi(20);
    e_b = abs(pi - b);
    e_g = abs(pi - g);
    e_v = abs(pi - v);
    exp_b = floor (log10(e_b));
    exp_g = floor (log10(e_g));
    exp_v = floor (log10(e_v));
    e_b=e_b.*10.^(-exp_b);
    e_g=e_g.*10.^(-exp_g);
    e_v=e_v.*10.^(-exp_v);


    for i=1:20
        fprintf(archivo,'$%2d$ & $%.4f$ & $%.4f$ & $%.4f$ & $%.4f *10^%02d$ & $%.4f*10^%02d$ & $%.4f*10^%02d$ \\\\ \n' ...
            ,i,b(i),g(i),v(i),e_b(i),exp_b(i),e_g(i),exp_g(i),e_v(i),exp_v(i));
    end
    fprintf(archivo,'\\hline \n');
    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
    fclose(archivo);
end
        
