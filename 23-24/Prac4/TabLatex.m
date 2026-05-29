function TabLatex
    archivo = fopen('tabla.tex','w');
    fprintf(archivo,'begin{tabular}{r|ccr}\n');
    fprintf(archivo,['x & f(x):=$frac{(-1)^x}{x}$' ...
        '& g(x):=$frac{sin(f(x))}{f(x)}$ & $h(x):=-f(x)*(x-g(x))^3$\n']);
    fprintf(archivo,'hline\n');
    for x=1:20
        f=((-1)^x)/x;
        g=sin(f)/f;
        h=-f*(x+g)^3;
        fprintf(archivo,'%d & %.4f & %.6f & %.6f\n', x,f,g,h);
    end
    fprintf(archivo,'\\hline\n');
    fprintf(archivo,'end{tabular}\n');
    fclose(archivo);
end