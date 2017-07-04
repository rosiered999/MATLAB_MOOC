function A = logipack(M)
    [a,b] = size(M);
    B = cell(1,b);
    C = [];
    for i=1:a
        C = [];
        for j=1:b
            if M(i,j)==1
                C = [C j];
            end
        end
        B{i} = C;
    end
    A = B;