function indexes = small_elements(X)
[a,b] = size(X);
Y = [];
for i=1:b
    for j=1:a
        if X(j,i)<i*j
           Y = [Y; j i];
        end
    end
end
indexes = Y;