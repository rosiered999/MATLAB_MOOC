function A = top_right(N,n)
[a,b] = size(N);
A = N(1:n,b-n+1:b);
end