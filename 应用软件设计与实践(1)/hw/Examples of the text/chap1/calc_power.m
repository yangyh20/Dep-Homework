%  Script file: calc_power.m
%
%  Purpose: 
%    To calculate the current, real, reactive, and apparent power,
%    and the power factor supplied to a load. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    12/01/97    S. J. Chapman        Original code 
%
% Define variables:
%   amps      -- Current in the load
%   p         -- Real power of load
%   pf        -- Power factor of load
%   q         -- Reactive power of the load
%   s         -- Apparent power of the load
%   theta     -- Impedance angle of the load
%   volts     -- Rms voltage of the power source
%   z         -- Magnitude of the impedance of the load

% Degrees to radians conversion factor 
conv = pi / 180;        

% Prompt the user for the rms voltage.
volts = input('Enter the rms voltage of the source: ');

% Prompt the user for the magnitude and angle of the impedance.
z = input('Enter the magnitude of the impedance in ohms: ');
theta = input('Enter the angle of the impedance in degrees: ');

% Perform calculations
amps = volts / z;                       % Rms current
p = volts * amps * cos (theta * conv);  % Real power
q = volts * amps * sin (theta * conv);  % Reactive power
s = volts * amps;                       % Apparent power
pf = cos ( theta * conv);               % Power factor
 
% Write out the results.
fprintf('Voltage        =  %f volts\n',volts);
fprintf('Impedance      =  %f ohms at %f degrees\n',z,theta);
fprintf('Current        =  %f amps\n',amps);
fprintf('Real Power     =  %f watts\n',p);
fprintf('Real Power     =  %f watts\n',p);
fprintf('Reactive Power =  %f VAR\n',q);
fprintf('Apparent Power =  %f VA\n',s);
fprintf('Power Factor   =  %f\n',pf);
