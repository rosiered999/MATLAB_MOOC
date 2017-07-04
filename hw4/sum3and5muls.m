function sum1 = sum3and5muls(n)
A = [0:3:n];
B = [0:5:n];
C = union(A,B);
sum1 = sum(C);