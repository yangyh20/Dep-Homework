function test_toggle_callback

% Find the state of the toggle button
state = get(gcbo,'Value');

% Place the value into the text field
Hndl = findobj(gcbf,'Tag','Label1');
if state == 0
   set (Hndl,'String','Off');
else
   set (Hndl,'String','On');
end   
