function term1 = sucesionx(x,xf,term0)
format long e;
    if x~=xf
        x=x+1;
        term = 3/4*(term0) + 1/(term0)^3;
        term1 = sucesionx(x,xf,term);
    else
        term1=3/4*(term0) + 1/(term0)^3;
    end
end