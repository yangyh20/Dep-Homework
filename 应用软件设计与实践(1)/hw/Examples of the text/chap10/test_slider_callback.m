function test_slider_callback

% Find the value of the popup menu
value = get(gcbo,'Value');

% Place the value into the text field
Hndl = findobj(gcbf,'Tag','Label1');
str = sprintf('%.2f',value);
set (Hndl,'String',str);
