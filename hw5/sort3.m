function [a b c] = sort3(M)
temp =0;
M1 = ones(1,3);
[p,q] = size(M);
if p==1
if M(1,1)>M(1,2)
    temp = M(1,2)
    M(1,2) = M(1,1)
    M(1,1) = temp
end
if M(1,2)>M(1,3)
    temp = M(1,3)
    M(1,3) = M(1,2)
    M(1,2) = temp
end
if M(1,1)>M(1,3)
    temp = M(1,3)
    M(1,3) = M(1,1)
    M(1,1) = temp
end
if M(1,1)>M(1,2)
    temp = M(1,2)
    M(1,2) = M(1,1)
    M(1,1) = temp
end
if M(1,2)>M(1,3)
    temp = M(1,3)
    M(1,3) = M(1,2)
    M(1,2) = temp
end
if M(1,1)>M(1,3)
    temp = M(1,3)
    M(1,3) = M(1,1)
    M(1,1) = temp
end
M1 = M
a = M1(1,1)
b = M1(1,2)
c = M1(1,3)
end
if q==1
    if M(1,1)>M(2,1)
    temp = M(2,1)
    M(2,1) = M(1,1)
    M(1,1) = temp
end
if M(2,1)>M(3,1)
    temp = M(3,1)
    M(3,1) = M(2,1)
    M(2,1) = temp
end
if M(1,1)>M(3,1)
    temp = M(3,1)
    M(3,1) = M(1,1)
    M(1,1) = temp
end
if M(1,1)>M(2,1)
    temp = M(2,1)
    M(2,1) = M(1,1)
    M(1,1) = temp
end
if M(2,1)>M(3,1)
    temp = M(3,1)
    M(3,1) = M(2,1)
    M(2,1) = temp
end
if M(1,1)>M(3,1)
    temp = M(3,1)
    M(3,1) = M(1,1)
    M(1,1) = temp
end
M1 = M
a = M1(1,1)
b = M1(2,1)
c = M1(3,1)
end