% Get time in ms
t = (0:1:25) * 1E-3;

% Get voltage and current
volts = 10 .* (1 - exp(-200 .* t));
amps = 0.2 .* exp(-200 .* t);

% Plot curves
plotyy( t, volts, t, amps );
