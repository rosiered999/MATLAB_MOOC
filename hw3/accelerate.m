function amag = accelerate(F1,F2,m)
F = F1+F2;
a = F/m
amag = sqrt(a(1,1)*a(1,1)+a(2,1)*a(2,1)+a(3,1)*a(3,1))