function HistGUI_callback(action)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Callback function for histogram GUI.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Declare global data
global nbins            % Number of bins in histogram
global x                % Input data values


% Set up switch to update fields
switch action

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This section handles callbacks from the menu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
case 'open'
   [filename,path] = uigetfile('*.dat','Load Data File');
   if filename ~= 0 
   
      % Read data
      x = textread([path filename],'%f');
      
      % Create histogram
      hist(x,nbins);
      
      % Set axis labels
      xlabel('\bfValue');
      ylabel('\bfCount');
      
      % Calculate statistics
      ave = mean(x);
      med = median(x);
      sd  = std(x);
      n   = length(x);
      
      % Update fields
      Hndl = findobj(gcbf,'Tag','MeanData');
      set (Hndl,'String',sprintf('%7.2f',ave));
      Hndl = findobj(gcbf,'Tag','MedianData');
      set (Hndl,'String',sprintf('%7.2f',med));
      Hndl = findobj(gcbf,'Tag','StdDevData');
      set (Hndl,'String',sprintf('%7.2f',sd));
      Hndl = findobj(gcbf,'Tag','TitleString');
      set (Hndl,'String',['Histogram (N = ' int2str(n) ')']);
      
   end

case 'exit'
   close;

case 'nbins'
   
   % Get number of bins, round to integer, and update field
   nbins = eval(get(gcbo,'String'));   
   nbins = round(nbins);
   if nbins < 1
      nbins = 1;
   end
   Hndl = findobj(gcbf,'Tag','NBins');
   set (Hndl,'String',int2str(nbins));

   % Re-display data, if available
   if nbins > 0 & ~isempty(x) 
      
      % Create histogram
      hist(x,nbins);
      
   end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This section traps unknown callbacks.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Default case
otherwise

    str = ['HistGUI_callback: An unrecognised callback has been received: ' action];
    disp (str);

end
