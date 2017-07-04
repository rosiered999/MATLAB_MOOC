function Q = intquad(n,m)
A = zeros(n,m);
B = ones(n,m);
C = 2*ones(n,m);
D = 3*ones(n,m);
Q = [A,B;C,D];