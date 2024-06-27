%  Script file: temp_conversion.m
%
%  Purpose: 
%    To convert an input temperature from degrees Fahrenheit to
%    an output temperature in kelvins. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    12/01/97    S. J. Chapman        Original code 
%
% Define variables:
%   temp_f    -- Temperature in degrees Fahrenheit
%   temp_k    -- Temperature in kelvins

% Prompt the user for the input temperature.
temp_f = input('Enter the temperature in degrees Fahrenheit: ');
 
% Convert to kelvins.
temp_k = (5/9) * (temp_f - 32) + 273.15; 
 
% Write out the result.
fprintf('%6.2f degrees Fahrenheit = %6.2f kelvins.\n', ...
        temp_f,temp_k);
