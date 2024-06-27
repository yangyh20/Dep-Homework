function test_radiobutton_callback(action)

switch action
case 'rb1'
   Hndl = findobj(gcbf,'Tag','Label1');
   set (Hndl,'String','Option 1');
   Hndl = findobj(gcbf,'Tag','radiobutton1');
   set (Hndl,'Value',1);
   Hndl = findobj(gcbf,'Tag','radiobutton2');
   set (Hndl,'Value',0);
   Hndl = findobj(gcbf,'Tag','radiobutton3');
   set (Hndl,'Value',0);

case 'rb2'
   Hndl = findobj(gcbf,'Tag','Label1');
   set (Hndl,'String','Option 2');
   Hndl = findobj(gcbf,'Tag','radiobutton1');
   set (Hndl,'Value',0);
   Hndl = findobj(gcbf,'Tag','radiobutton2');
   set (Hndl,'Value',1);
   Hndl = findobj(gcbf,'Tag','radiobutton3');
   set (Hndl,'Value',0);

case 'rb3'
   Hndl = findobj(gcbf,'Tag','Label1');
   set (Hndl,'String','Option 3');
   Hndl = findobj(gcbf,'Tag','radiobutton1');
   set (Hndl,'Value',0);
   Hndl = findobj(gcbf,'Tag','radiobutton2');
   set (Hndl,'Value',0);
   Hndl = findobj(gcbf,'Tag','radiobutton3');
   set (Hndl,'Value',1);

end
