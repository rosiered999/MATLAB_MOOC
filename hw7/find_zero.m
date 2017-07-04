
function x = find_zero(f,x1,x2)
    toler = (10^-10);
    a = x1;
    b = x2;
    while 1
        if f(x1)==0
            x = x1;
            break;
        elseif f(x2)==0
            x = x2;
            break;
        elseif (b-a)<toler
            x = a;
            break;
        else
            m = (a+b)/2;
            if f(a)==0
                x = a;
                break;
            elseif f(b)==0
                x = b;
                break;
            elseif f(m)==0
                x = m;
                break;
            else
                if (f(a) > 0 && f(m) < 0) || (f(a) < 0 && f(m) > 0)
                   b = m;
                else
                    a = m;
                end
            end
        end
    end
end
   