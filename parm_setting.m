function varargout = parm_setting(varargin)
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @parm_setting_OpeningFcn, ...
                   'gui_OutputFcn',  @parm_setting_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before parm_setting is made visible.
function parm_setting_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

handles.ps_edit1.String = varargin{1}.edit1.String;

% Choose default command line output for parm_setting
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes parm_setting wait for user response (see UIRESUME)
uiwait(handles.figure1);

function ps_edit1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function ps_edit1_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in ps_button1.
function ps_button1_Callback(hObject, eventdata, handles)
% hObject    handle to ps_button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.output = handles.ps_edit1.String;
guidata(hObject, handles);

uiresume(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = parm_setting_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;

delete(hObject)
