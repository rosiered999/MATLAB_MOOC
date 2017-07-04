function mbd = spherical_mirror_aberr(fn,D)
f = D*fn;
delta_x = 0.01;
x = 0:delta_x:D/2;
t = asin(x./(2*f));
tant = tan(2.*t);
cost = 1./cos(t) -1;
d = 2*f*tant.*cost;

k = 0.08*(1/(D*D));
mbd = k*sum(x.*d);