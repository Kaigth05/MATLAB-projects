function [t, r1, r2, v1, v2] = eulerGravitacional(f, t0, tf, r0, v0, h, p, Gm)
    t = t0:h:tf;
    N = length(t);
    r1 = zeros(1, N); r2 = zeros(1, N);
    v1 = zeros(1, N); v2 = zeros(1, N);
    r1(1) = r0(1); r2(1) = r0(2);
    v1(1) = v0(1); v2(1) = v0(2);
    
    for i = 1:N-1
        deriv = f(t(i), r1(i), r2(i), v1(i), v2(i), p, Gm);
        r1(i+1) = r1(i) + h * deriv(1);
        r2(i+1) = r2(i) + h * deriv(2);
        v1(i+1) = v1(i) + h * deriv(3);
        v2(i+1) = v2(i) + h * deriv(4);
    end
end