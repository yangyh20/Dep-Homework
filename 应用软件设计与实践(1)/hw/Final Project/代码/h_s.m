function varargout = h_s(varargin)
% H_S M-file for h_s.fig
%      H_S, by itself, creates a new H_S or raises the existing
%      singleton*.
%
%      H = H_S returns the handle to a new H_S or the handle to
%      the existing singleton*.
%
%      H_S('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in H_S.M with the given input arguments.
%
%      H_S('Property','Value',...) creates a new H_S or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before h_s_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to h_s_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help h_s

% Last Modified by GUIDE v2.5 03-Sep-2022 16:32:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @h_s_OpeningFcn, ...
                   'gui_OutputFcn',  @h_s_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before h_s is made visible.
function h_s_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to h_s (see VARARGIN)

% Choose default command line output for h_s
handles.output = hObject;
handles.cellsh=final(0.0005,80,273.15,1073.15);% isothermal lines & isobaric lines
handles.cellsh1=gandu(0.001,80);% Iso-dryness lines

axis([0,13,0,4500]);
xlabel('Entropy / [kJ/(kg*K)] ');
ylabel('Enthalpy / (kJ/kg)');
title('plot of s-h');
hold off;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes h_s wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = h_s_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function low_temperature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to low_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function low_temperature_Callback(hObject, eventdata, handles)
% hObject    handle to low_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of low_temperature as text
%        str2double(get(hObject,'String')) returns contents of low_temperature as a double


% --- Executes during object creation, after setting all properties.
function high_temperature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to high_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function high_temperature_Callback(hObject, eventdata, handles)
% hObject    handle to high_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of high_temperature as text
%        str2double(get(hObject,'String')) returns contents of high_temperature as a double


% --- Executes during object creation, after setting all properties.
function low_pressure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to low_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function low_pressure_Callback(hObject, eventdata, handles)
% hObject    handle to low_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of low_pressure as text
%        str2double(get(hObject,'String')) returns contents of low_pressure as a double


% --- Executes during object creation, after setting all properties.
function high_pressure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to high_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function high_pressure_Callback(hObject, eventdata, handles)
% hObject    handle to high_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of high_pressure as text
%        str2double(get(hObject,'String')) returns contents of high_pressure as a double
 

% --- Executes during object creation, after setting all properties.
function single_temperature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to single_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function single_temperature_Callback(hObject, eventdata, handles)
% hObject    handle to single_temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of single_temperature as text
%        str2double(get(hObject,'String')) returns contents of single_temperature as a double

% --- Executes during object creation, after setting all properties.
function single_pressure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to single_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function single_pressure_Callback(hObject, eventdata, handles)
% hObject    handle to single_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of single_pressure as text
%        str2double(get(hObject,'String')) returns contents of single_pressure as a double



% --- Executes during object creation, after setting all properties.
function single_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to single_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function single_h_Callback(hObject, eventdata, handles)
% hObject    handle to single_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of single_h as text
%        str2double(get(hObject,'String')) returns contents of single_h as a double


% --- Executes during object creation, after setting all properties.
function single_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to single_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function single_s_Callback(hObject, eventdata, handles)
% hObject    handle to single_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of single_s as text
%        str2double(get(hObject,'String')) returns contents of single_s as a double


% --- Executes on button press in singlebutton.
function singlebutton_Callback(hObject, eventdata, handles)
% hObject    handle to singlebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=get(handles.single_temperature,'String');
pres=get(handles.single_pressure,'String');
t=str2num(temp);
p=str2num(pres);
s=entropy(p,t);
h=enthalpy(p,t);
ss=num2str(s);
hh=num2str(h);
set(handles.single_s,'String',ss);
set(handles.single_h,'String',hh);

% --- Executes on button press in rangebutton.
function rangebutton_Callback(hObject, eventdata, handles)
% hObject    handle to rangebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
strtl=get(handles.low_temperature,'String');
strth=get(handles.high_temperature,'String');
strpl=get(handles.low_pressure,'String');
strph=get(handles.high_pressure,'String');
tl=str2num(strtl);
th=str2num(strth);
pl=str2num(strpl);
ph=str2num(strph);

handles.cellsh=final(pl,ph,tl,th);
s=handles.cellsh{1,1};h=handles.cellsh{1,2};
handles.cellsh1=gandu(pl,ph);

smin=min(min(s));
smax=max(max(s));
hmin=min(min(h));
hmax=max(max(h));
axis([smin,smax,hmin,hmax]);
xlabel('Entropy / [kJ/(kg*K)] ');
ylabel('Enthalpy / (kJ/kg)');
title('plot of s-h');
hold off;

% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    % no-use funtion

% --------------------------------------------------------------------
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  no-use funtion
% --------------------------------------------------------------------
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.cellsh=final(0.0005,80,273.15,1073.15);
handles.cellsh1=gandu(0.001,80);


axis([0,13,0,4500]);
xlabel('Entropy / [kJ/(kg*K)] ');
ylabel('Enthalpy / (kJ/kg)');
title('plot of s-h');
hold off;
set(handles.low_temperature,'String',273.15);
set(handles.high_temperature,'String',1073.15);
set(handles.low_pressure,'String',0.001);
set(handles.high_pressure,'String',80);
set(handles.single_pressure,'String','');
set(handles.single_temperature,'String','');
set(handles.single_s,'String','');
set(handles.single_h,'String','');
% --------------------------------------------------------------------
function grid_Callback(hObject, eventdata, handles)
% hObject    handle to grid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  % to grid

% --------------------------------------------------------------------
function on_Callback(hObject, eventdata, handles)
% hObject    handle to on (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
grid on;

% --------------------------------------------------------------------
function off_Callback(hObject, eventdata, handles)
% hObject    handle to off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

grid off;
