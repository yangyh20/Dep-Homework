%  Script file name: read_mat.m
%
%  Purpose: 
%    This file uses a uigetfile dialog box to get the
%    name of a MAT file, and then loads that file into
%    the workspace. 
%
[filename, pathname] = uigetfile('*.mat','Load MAT File');
if filename ~= 0
   load([pathname filename])
end
