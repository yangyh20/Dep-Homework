function button_clicked

% Declare and initialize variable to store the count
persistent count
if isempty(count)
   count = 0;
end

% Update count
count = count + 1; 

% Create new string
str = sprintf('Total Clicks: %d',count);

% Find the text field and update the text
Hndl = findobj(gcbf,'Tag','StaticText1');
set (Hndl,'String',str);
