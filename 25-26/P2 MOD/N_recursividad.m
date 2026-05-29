function r = N_recursividad(n)

    A = [14.3, 14.4, 14.3, 13.2, 12.8, 12.2, 11.7,11.3,10.7,9.8,9.8]' / 1000;
    B = [13.8,14.1,13.7,13.3,13.8,13.7,15.5,17.5,14.3,13.8,14]' / 1000;
    E = [-8,-8,-12.1,-16.9,-16.4,-14.4,-7.1,-8.7,-18.3,-13.1,-32.3]' / 1000;
    P = [2857815,2835978,2803186,2755189,2707203,2664224,...
        2635130,2595809,2528654,2457783,2402306]';
    Y = (2015:2024)';

    Va = -(diff(A) ./ P(1:end-1));
    Vb =  (diff(B) ./ P(1:end-1));
    Ve =  (diff(E) ./ ((A(1:end-1)-B(1:end-1)).*P(1:end-1)));
    
    syms t

    pa = lagrangme(Va,Y(1:end), t);
    pb = lagrangme(Vb, Y(1:end), t);
    pe = lagrangme(Ve, Y(1:end), t);
    
    K = -7.5e-3 / (Va(1) + Vb(1) - Ve(1));
    
    a = 14.3e-3; b = 13.8e-3; e = -8e-3;
    ayA = zeros(n+1,1); ayA(1) = a;
    ayB = zeros(n+1,1); ayB(1) = b;
    ayE = zeros(n+1,1); ayE(1) = e;
    r = zeros(n+1,1); r(1) = 2857815;
    
    for N = 1:n
        year = 2014 + N;
        c_val = subs(pa,t, year);
        d_val = subs(pb,t, year);
        f_val = subs(pe,t, year);
        
        growth = (ayA(N) - ayB(N) + ayE(N));
        r(N+1) = r(N) + growth*r(N) - (growth/K)*(r(N)^2);

        ayA(N+1) = ayA(N) - c_val*r(N);
        ayB(N+1) = ayB(N) + d_val*r(N);
        ayE(N+1) = ayE(N) + f_val*(ayA(N)-ayB(N))*r(N);
    end
end
