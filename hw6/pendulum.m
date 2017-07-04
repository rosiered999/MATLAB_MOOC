function T = pendulum(L,a0)
g =9.8;
theta = a0;
delta_t = (10)^-6;
t_t=0;
w = 0;
angles =[];
while theta>0 && L~=0
    alpha = -g*sin(theta)/L;
    w = w + alpha*delta_t;
    new_theta = theta + w*delta_t;
    angles = [angles new_theta];
    theta = new_theta;
    t_t = t_t + delta_t;
end
if L==0
    T=0;
else
    T = 4*t_t;
end
