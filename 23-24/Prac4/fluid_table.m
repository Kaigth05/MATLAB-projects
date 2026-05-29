function fluid_table
    archivo = fopen('fluid.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabular}{|c|c|c|c|}\n');
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'\\multirow{2}{*}{n} & \\multicolumn{3}{|c|}{$1/\\sqrt(f_D)=1.93*(log_{10}(7000)+0.5*log_{10}(f_D))-0.537$} &');
    fprintf(archivo,' & Valor aproximado (f^{n}_{D}) & Error absoluto (\\|f^{n+1}_{D}-f^{n}_{D}\\|) & Error relativo (e^{n+1}_{D}/e^{n}_{D}) \\\\');
    fprintf(archivo,'\n\\hline\n');
    [fn, ea, er] = fricfluid;
    for i=1:length(er)
        fprintf(archivo,'$%02d$ & $%.6f$ & $%.6f$ & $%.6f$ \\\\ \n' ...
            ,i,fn(i),ea(i),er(i));
    end
    fprintf(archivo,'$%02d$ & $%.6f$ & $%.6f$ &  \\\\ \n' ...
            ,length(ea),fn(length(ea)),ea(length(ea)));
    fprintf(archivo,'$%02d$ & $%.6f$ &  &  \\\\ \n' ...
            ,length(fn),fn(length(fn)));

    fprintf(archivo,'\\hline \n');
    fprintf(archivo,'\\end{tabular}\n');
    fprintf(archivo,'\\end{document}\n');
    fclose(archivo);
end