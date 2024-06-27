%  Script file: lsqfit.m
%
%  Purpose: 
%    To perform a least-squares fit of an input data set
%    to a straight line, and print out the resulting slope
%    and intercept values.  The input data for this fit
%    comes from a user-specified input data file.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    12/20/98    S. J. Chapman        Original code 
%
% Define variables:
%   count     -- Number of values read / written
%   fid       -- File id
%   in_array  -- Input array
%   msg       -- Open error message
%   out_array -- Output array
%   status    -- Operation status
%   time      -- Elapsed time in seconds


%CHARACTER(len=24) :: filename ! Input file name (<= 24 chars)%
%INTEGER :: ierror             ! Status flag from I/O statements
%INTEGER :: n = 0              ! Number of input data pairs (x,y)
%REAL :: slope                 ! Slope of the line
%REAL :: sum_x = 0.            ! Sum of all input X values
%REAL :: sum_x2 = 0.           ! Sum of all input X values squared
%REAL :: sum_xy = 0.           ! Sum of all input X*Y values
%REAL :: sum_y = 0.            ! Sum of all input Y values
%REAL :: x                     ! An input X value
%REAL :: x_bar                 ! Average X value
%REAL :: y                     ! An input Y value
%REAL :: y_bar                 ! Average Y value
%REAL :: y_int                 ! Y-axis intercept of the line

% Initialize sims
n = 0; sum_x = 0; sum_y = 0; sum_x2 = 0; sum_xy = 0;

% Prompt user and get the name of the input file.
disp('This program performs a least-squares fit of an');
disp('input data set to a straight line. Enter the name');
disp('of the file containing the input (x,y) pairs:  ' );
filename = input(' ','s');

% Open the input file
[fid,msg] = fopen(filename,'rt');

% Check to see of the open failed.
if fid < 0 

   % There was an error--tell user.
   disp(msg);

else
 
   % File opened successfully. Read the (x,y) pairs from 
   % the input file.  Get first (x,y) pair before the
   % loop starts.
   [in,count] = fscanf(fid,'%g %g',2);
   
   while ~feof(fid)
      x = in(1);
      y = in(2);
      n      = n + 1;                  %
      sum_x  = sum_x + x;              % Calculate 
      sum_y  = sum_y + y;              %   statistics
      sum_x2 = sum_x2 + x.^2;          %
      sum_xy = sum_xy + x * y;         %

      % Get next (x,y) pair
      [in,count] = fscanf(fid,'%f',[1 2]);

   end
 
   % Now calculate the slope and intercept. 
   x_bar = sum_x / n;
   y_bar = sum_y / n;
   slope = (sum_xy - sum_x*y_bar) / (sum_x2 - sum_x*x_bar);
   y_int = y_bar - slope * x_bar; 
 
   % Tell user.
   fprintf('Regression coefficients for the least-squares line:\n');
   fprintf('   Slope (m)     = %12.3f\n',slope);
   fprintf('   Intercept (b) = %12.3f\n',y_int);
   fprintf('   No of points  = %12d\n',n);

end
