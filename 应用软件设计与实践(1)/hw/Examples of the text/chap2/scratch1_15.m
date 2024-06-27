l = 0.1e-3;
c = 0.25e-9;
r = 50;
f = 1e5:1e5:5e6;
omega = 2*pi*f;

v = r ./ sqrt( r^2 + (omega*l - 1./(omega*c)).^2);

power = v.^2/r;
