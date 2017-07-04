function N = smallest_multiple(n)
c = 1;
falg =1;
for i=1:n
    if(c < 18446744073709551615)
        c = (c*i)/gcd(c,i);
    else
        falg =1;
        break;
    end
end
if(falg~=1)
    N = uint64(c);
else
    N = 0;
end