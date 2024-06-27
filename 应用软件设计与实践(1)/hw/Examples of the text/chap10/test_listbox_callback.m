function test_listbox_callback(action)

switch action
case 'button'
   Hndl = findobj(gcbf,'Tag','Listbox1');
   value = get (Hndl,'Value');
   Hndl = findobj(gcbf,'Tag','Label1');
   str = ['Option ' num2str(value)];
   set (Hndl,'String',str);

case 'list'
   % If this was a double click, update the label.
   selectiontype = get(gcf,'SelectionType'); 
   if selectiontype(1) == 'o'
      Hndl = findobj(gcbf,'Tag','Listbox1');
      value = get (Hndl,'Value');
      Hndl = findobj(gcbf,'Tag','Label1');
      str = ['Option ' num2str(value)];
      set (Hndl,'String',str);
   end
end
