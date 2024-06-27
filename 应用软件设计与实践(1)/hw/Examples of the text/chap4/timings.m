%  Script file: timings.m
%
%  Purpose: 
%    This program calculates the time required to 
%    calculate the squares of all integers from 1 to
%    10,000 in three different ways:
%    1.  Using a for loop with an uninitialized output
%        array.
%    2.  Using a for loop with an pre-allocated output
%        array.
%    3.  Using vectors.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    12/08/97    S. J. Chapman        Original code 
%
% Define variables:
%   ii, jj       -- Loop index
%   average1     -- Average time for calculation 1
%   average2     -- Average time for calculation 2
%   average3     -- Average time for calculation 3
%   maxcount     -- Number of times to loop calculation
%   square       -- Array of squares
%   leap_day     -- Extra day for leap year
%   month        -- Month (mm)
%   year         -- Year (yyyy)


% Perform calculation with an uninitialized array 
% "square".  This calculation is done only once 
% because it is so slow.
maxcount = 1;               % One repetition
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   for ii = 1:10000       
     square(ii) = ii^2;     % Calculate square
   end
end
average1 = (toc)/maxcount;  % Calculate average time 


% Perform calculation with a pre-allocated array 
% "square".  This calculation is averaged over 10  
% loops.
maxcount = 10;              % One repetition
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   square = zeros(1,10000); % Pre-initialize array
   for ii = 1:10000       
     square(ii) = ii^2;     % Calculate square
   end
end
average2 = (toc)/maxcount;  % Calculate average time 

% Perform calculation with vectors.  This calculation 
% averaged over 100 executions. 
maxcount = 100;             % One repetition
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   ii = 1:10000;            % Set up vector
   square = ii.^2;          % Calculate square
end
average3 = (toc)/maxcount;  % Calculate average time 

% Display results
fprintf('Loop / uninitialized array = %8.4f\n', ...
         average1);
fprintf('Loop / initialized array =   %8.4f\n', ...
         average2);
fprintf('Vectorized =                 %8.4f\n', ...
         average3);
         