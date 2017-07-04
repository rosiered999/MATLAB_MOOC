function dd = day_diff(m1,d1,m2,d2)
days = [31,28,31,30,31,30,31,31,30,31,30,31];

c = isscalar(m1);
d = isscalar(m2);
e = isscalar(d1);
f = isscalar(d2);

if c==1 && d==1 && e==1 && f==1 && (m1==2 && d1==29)~=1 && (m2==2 &&d2==29)~=1 && ...
        d1~=0 && d2~=0 && m1~=0 && m2~=0 && floor(m1)==m1 && floor(m2)==m2 &&...
        floor(d1)==d1 && floor(d2)==d2 && d1>=1 && d2>=1 && m1>=1 && m2>=1 && ...
        d2<=days(m2) && d1<=days(m1)
    sum1 = sum(days(1:m1-1))+d1;
    sum2 = sum(days(1:m2-1))+d2;
    dd = abs(sum2-sum1);
else
    dd =-1;
end