function M = reverse_diag(n)
A(n,n)=0;
A(1:n+1:end)=1;
M = flip(A);
% Using the A(1:n+1:end) references the elements of A that should be 1, you can simply do: