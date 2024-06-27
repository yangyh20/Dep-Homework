[filename, pathname] = uigetfile('*.mat','Load MAT File');
if filename ~= 0
   load([pathname filename])
end
