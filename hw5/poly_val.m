function p = poly_val(c0,c,x)
c = reshape(c,1,[]);
[a,b] = size(c);
v = zeros(a,b);
if a==0||b==0
    p =c0;
elseif b==1
    p = c0+c*x;
else
    v = x.^(1:b);
    sum1 = sum(c.*v);
    p = sum1+c0;
end