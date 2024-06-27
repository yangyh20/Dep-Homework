function temp_conversion_callback( action )

% Callback function for the temp_conversion program.
% This function uses a switch structure to route the
% callbacks to the proper section of code.  Note the 
% code to limit each temperature to its valid range.

switch action 
case 'Edit1'
   deg_f = eval( get(gcbo,'String') );
   deg_f = max( [ 32 deg_f] );
   deg_f = min( [212 deg_f] );
   deg_c = to_c(deg_f);

case 'Edit2'
   deg_c = eval( get(gcbo,'String') );
   deg_c = max( [  0 deg_c] );
   deg_c = min( [100 deg_c] );
   deg_f = to_f(deg_c);

case 'Slider1'
   deg_c = get(gcbo,'Value');
   deg_f = to_f(deg_c);
end
   
% Now update all fields.
Hndl = findobj(gcbf,'Tag','Edit1');
set (Hndl,'String',sprintf('%.1f',deg_f));
Hndl = findobj(gcbf,'Tag','Edit2');
set (Hndl,'String',sprintf('%.1f',deg_c));
Hndl = findobj(gcbf,'Tag','Slider1');
set (Hndl,'Value',deg_c);
