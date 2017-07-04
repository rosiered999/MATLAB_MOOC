function percent = zero_stat(M)
[a,b] = size(M);
sum1 = sum(M(:));
percent = 100 - (sum1*100)/(a*b);