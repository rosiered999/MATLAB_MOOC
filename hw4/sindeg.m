function [M,avg] = sindeg(deg)
rad = deg*pi/180;
M = sin(rad);
[a,b] = size(M);
avg = sum(M(:))/(a*b);