function cash = fare(dist,age)
d = 10*rem(dist,1);
if d>=5
    dist = ceil(dist);
elseif d<5
    dist = floor(dist);
end
cash =2;
if dist==1
    cash = 2;
end
if dist>1 && dist<=10
    cash = cash+0.25*(dist-1);
end
if dist>10
    cash = cash+0.25*9+0.1*(dist-10);
end
if age<=18 || age>=60
    cash = 0.8*cash;
end