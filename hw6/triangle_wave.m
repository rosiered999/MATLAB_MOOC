function a=triangle_wave(n)
t_val = linspace(0,4*pi,1001);
final = zeros(1,1001);
for k=0:n
    posneg = (-1)^k;
    sin_val = sin((2*k+1)*t_val);
    den = (2*k+1)^2;
    final = final + (posneg*sin_val/den);
end
a = final;
    