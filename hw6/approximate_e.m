function [e,k] = approximate_e(delta)
a_e = 0;
k = 0;
while abs(a_e-exp(1))>delta
    if k==0
        a_e = 1;
        k = k+1;
    elseif k > 0
        f = prod(1:k);
        a_e = a_e + 1/f;
        k = k+1;
    end
end
if delta==1
    e=2;
    k = 1;
else
    e = a_e;
    k = k-1;
end