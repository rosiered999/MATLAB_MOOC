function [product, ind] = max_product(v,n)
v = reshape(v,1,[]);
pro = [];
[a,b] = size(v);
for i=1:b-n+1
    x = v(i:i+n-1);
    pro = [pro prod(x)];
end
[product,ind] = max(pro);
if b<n
    product = 0;
    ind = -1;
end