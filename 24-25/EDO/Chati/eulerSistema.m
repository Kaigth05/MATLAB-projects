function X = eulerSistema(f_hat, t0, x0, h, N)
    X = zeros(length(x0), N+1);
    t = t0; x = x0;
    X(:,1) = x;
    for n=1:N
        x = x + h * f_hat(t, x);
        t = t + h;
        X(:,n+1) = x;
    end
end