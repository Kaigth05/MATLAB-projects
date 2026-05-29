function timing_resolv
archivo = fopen('tablas.tex','w');
    fprintf(archivo,'\\documentclass{article}\n');
    fprintf(archivo,'\\usepackage{multirow}\n');
    fprintf(archivo,'\\usepackage{tabularx}\n');
    fprintf(archivo,'\\providecommand{\\abs}[1]{\\lvert#1\\rvert}\n');
    fprintf(archivo,'\\begin{document}\n');
    fprintf(archivo,'\\begin{tabularx}{400pt}{c|c|c|c|c}\n');
    fprintf(archivo,' $n$ & $pa=lu(A_n)(t)$ & $jacobi(A_n)(t)$ & $g-seidel(A_n)(t)$ & $MatLab(A_n)(t)$ \\\\');
    fprintf(archivo,'\n\\hline\n');
n = 10;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A10 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A10,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A10,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A10,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A10\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac,Tgs,Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 20;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A20 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A20,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A20,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A20,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A20\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 50;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A50 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A50,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A50,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A50,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A50\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 100;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A100 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A100,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A100,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A100,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A100\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 200;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A200 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A200,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A200,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A200,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A200\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 500;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A500 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A500,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A500,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A500,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A500\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 1000;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A1000 = generar_matriz_edd(n);
    tic
    x1=resolv_palu(A1000,b);
    Tpalu=toc;
    tic
    x2=jacobi_semin(A1000,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A1000,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A1000\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %.6e & %.6e & %.6e & %.6e \\\\',n,Tpalu,Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
n = 2000;
    tol = 1e-12;
    maxits = 1e+6;
    b= ones (n,1);
    x0 = zeros(n, 1);
    A2000 = generar_matriz_edd(n);
    tic
    x2=jacobi_semin(A2000,b,x0,maxits,tol);
    Tjac=toc;
    tic
    x3=gauss_seidel_semin(A2000,b,x0,maxits,tol);
    Tgs=toc;
    tic
    A2000\b;
    Tmat=toc;
    fprintf(archivo,'%2d & %s & %.6e & %.6e & %.6e \\\\',n,'...',Tjac, Tgs, Tmat);
    fprintf(archivo,'\n \\hline \n');
    fprintf(archivo,'\\end{tabularx}\n');
    fprintf(archivo,'\\end{document}\n');
end