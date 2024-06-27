%  Script file: microphone2.m
%
%  Purpose: 
%    This program plots the gain pattern of a cardioid 
%    microphone.  This version of the program uses low-
%    level graphics commands to place the title clear 
%    of the polar plot.
%
%  Record of revisions:
%      Date       Programmer        Description of change
%      ====       ==========        =====================
%    12/10/97    S. J. Chapman      Original code 
% 1. 12/14/97    S. J. Chapman      Modified to move title
%
% Define variables:
%   g         -- Microphone gain constant
%   gain      -- Gain as a function of angle
%   H1        -- Handle of gain function line
%   theta     -- Angle from microphone axis (radians)

% Calculate gain versus angle
g = 0.5;
theta = 0:pi/20:2*pi;
gain = 2*g*(1+cos(theta));

% Plot gain
H1=polar (theta,gain,'r-');
set(H1,'LineWidth',2);
title ('\bfGain versus angle \theta');

% Now get the position of the axes, and make them
% 5 percent shorter vertically.
position = get(gca,'Position');
position(4) = 0.95*position(4);
set(gca,'Position',position');

% Get the handle of the title, and more it upwards
% by 10 percent.  
H2 = get(gca,'Title');
position = get(H2,'Position');
position(2) = 1.1*position(2);
set(H2,'Position',position);

