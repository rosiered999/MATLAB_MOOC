function sum1 = spiral_diag_sum(n)
if mod(n,2)==1
max = floor(n/2);
number = 1;
sum =1;
for i = 2:2:2*max
    for j = 1:4
    number = number + i;
    sum = sum + number;
    end
end
elseif mod(n,2)==0
   
end
sum1 = sum