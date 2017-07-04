function M = logiunpack(A)
    A = reshape(A,1,[]);
     [a,b] = size(A);
     N = zeros(b);
     for i=1:b
         B = A{i};
         B = reshape(B,1,[]);
         [s, len] = size(B);
         for j=1:len
             N(i,B(1,j))=1;
         end
     end
     M = logical(N);