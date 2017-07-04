function sum1= halfsum(A)
[a,b] = size(A);
if a==b
    B = flip(eye(a));
    for i=1:a
        for j=1:b
            if B(i,j)==1
                B(i,j+1:b)=1;
            end
        end
    end
C = A.*B;
sum1 = sum(C(:));    
elseif a~=b
  B = flipud(eye(a,b));
  for i=1:a
      for j=1:b
          if B(i,j)==1
              B(i,j+1:end)=1;
          end
      end
  end
  %B(b,:)=1;
  C = A.*B;
sum1 = sum(C(:));
end
