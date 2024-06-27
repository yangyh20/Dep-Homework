function test_edit_callback

% Find the value typed into the edit box
str = get (gcbo,'String');

% Place the value into the text field
Hndl = findobj(gcbf,'Tag','Label1');
set (Hndl,'String',str);
