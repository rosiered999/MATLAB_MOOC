function orms = odd_rms(nn)
o = [1:2:2*nn];
oo = o.*o;
sum1 = sum(oo);
orms = sqrt(sum1/nn);