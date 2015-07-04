function y=fourier_helper(k, t)
    a=@(k)(1-exp(-pi*1i*k))/(2*pi*1i*k);
    basis=@(k)(@(t)(exp(2*pi*1i*k*t)));
    y=t;
    y(:)=0.5;
    for i=1:k
        b=basis(-i);
        y=y+a(-i)*b(t);
        b=basis(i);
        y=y+a(i)*b(t);
    end
end

