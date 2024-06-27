function plot_line_callback( action )

% Callback function for the plot_line program.
% This function uses a switch structure to route the
% callbacks to the proper section of code.  

% Make sure that the line's handle stays around 
% between calls.
persistent hl1;

switch action 
case 'FileOpen1'
   
   % Get the file to open
   [filename, pathname] = uigetfile('*.dat','Load Data');
   if filename ~= 0

      % Open the input file
      filename = [pathname filename];
      [fid,msg] = fopen(filename,'rt');

      % Check to see of the open failed.
      if fid < 0 

         % There was an error--tell user.
         str = ['File ' filename ' could not be opened.'];
         title = 'File Open Failed';
         errordlg(str,title,'modal');

      else
 
         % File opened successfully. Read the (x,y) pairs from 
         % the input file.  Get first (x,y) pair before the
         % loop starts.
         [in,count] = fscanf(fid,'%g',2);
         ii = 0;
         
         while ~feof(fid)
            ii = ii + 1;
            x(ii) = in(1);
            y(ii) = in(2);

            % Get next (x,y) pair
            [in,count] = fscanf(fid,'%g',2);
         end
         
         % Data read in.  Close file.
         fclose(fid);
         
         % Now plot the data.
         hl1 = plot(x,y,'LineWidth',3);
         xlabel('x');
         ylabel('y');
         grid on;
         
         % Associate the context menu with line
         Hndl = findobj(gcbf,'Tag','ContextMenu1');
         set(hl1,'Uicontextmenu',Hndl);
        
      end
   end

case 'FileExit1'
   close(gcbf);

case 'LineSolid1'
   set(hl1,'LineStyle','-');

case 'LineDashed1'
   set(hl1,'LineStyle','--');

case 'LineDotted1'
   set(hl1,'LineStyle',':');

case 'LineDashDot1'
   set(hl1,'LineStyle','-.');

end
   
