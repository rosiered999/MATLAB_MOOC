function sum1 = peri_sum(A)
[a,b] = size(A);
A_top = A(1,:);
A_bot = A(end,:);
A_left  = A(:,1);
A_right = A(:,end);

sum1 = sum(A_top)+sum(A_bot)+sum(A_left)+sum(A_right) - A(1,1)-A(1,end)-A(end,1)-A(end,end);