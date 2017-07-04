function n = palin_product(dig,lim)
min = 10^(dig-1);
max = 10^dig - 1;
A = min:max;
B = transpose(A);
C = A.*B;
C = C(C<lim);
C = unique(C);
C = reshape(C,1,[]);
C = num2str(C);
C = strsplit(C);
[a,b] = size(C);
pal = [];
for i=1:b
    str = C{i};
    rev = flip(C{i});
    if strcmp(str,rev)==1
        num = str2num(str);
        pal = [num pal];
    end
end
if isempty(pal)
    n=0;
else
    n = pal(1);
end