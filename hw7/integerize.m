function ch = integerize(A)
%{
  int8            -- 8-bit signed integer array
      int16           -- 16-bit signed integer array
      int32           -- 32-bit signed integer array
      int64           -- 64-bit signed integer array
%}
[a,b] = size(A);
B = zeros(1,5);
for i=1:a
    for j=1:b
        if A(i,j)>= (-2)^7 && A(i,j)<=(2^7)-1
            B(1,1) = 1;
        elseif A(i,j) >= (-2^15) && A(i,j)<=(2^15)-1
            B(1,2) = 1;
        elseif A(i,j) >= (-2^31) && A(i,j)<=(2^31-1)
            B(1,3) = 1;
        elseif A(i,j) >= (-2^63) && A(i,j)<=(2^63-1)
            B(1,4)=1;
        else
            ch = 'NONE';
            break;
        end
    end
end

if B(1,1)==1 && B(1,2)==0 && B(1,3)==0 && B(1,4)==0 && B(1,5)==0
    ch='int8';
elseif B(1,2)==1 && B(1,3)==0 && B(1,4)==0 && B(1,5)==0
    ch='int16';
elseif B(1,3)==1 && B(1,4)==0 && B(1,5)==0
    ch='int32';
elseif B(1,4)==1 && B(1,5)==0
    ch='int64';
end