function varargout = piano(varargin)
% PIANO MATLAB code for piano.fig
%      PIANO, by itself, creates a new PIANO or raises the existing
%      singleton*.
%
%      H = PIANO returns the handle to a new PIANO or the handle to
%      the existing singleton*.
%
%      PIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIANO.M with the given input arguments.
%
%      PIANO('Property','Value',...) creates a new PIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piano

% Last Modified by GUIDE v2.5 08-Apr-2017 01:42:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piano_OpeningFcn, ...
                   'gui_OutputFcn',  @piano_OutputFcn, ...
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


% --- Executes just before piano is made visible.
function piano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piano (see VARARGIN)

% Choose default command line output for piano
handles.output = hObject;
[ handles.c5, handles.fs] = audioread('39200__jobro__piano-ff-052.wav');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in c4.
function c4_Callback(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 261.626;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in d4.
function d4_Callback(hObject, eventdata, handles)
% hObject    handle to d4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 293.665;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in e4.
function e4_Callback(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 329.628;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in f4.
function f4_Callback(hObject, eventdata, handles)
% hObject    handle to f4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 349.228;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in g4.
function g4_Callback(hObject, eventdata, handles)
% hObject    handle to g4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 391.995;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in a4.
function a4_Callback(hObject, eventdata, handles)
% hObject    handle to a4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 440;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in b4.
function b4_Callback(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 493.883;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in ds4.
function ds4_Callback(hObject, eventdata, handles)
% hObject    handle to ds4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 311.127;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in fs4.
function fs4_Callback(hObject, eventdata, handles)
% hObject    handle to fs4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 369.994;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in gs4.
function gs4_Callback(hObject, eventdata, handles)
% hObject    handle to gs4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 415.305;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in as4.
function as4_Callback(hObject, eventdata, handles)
% hObject    handle to as4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 466.164;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in cs4.
function cs4_Callback(hObject, eventdata, handles)
% hObject    handle to cs4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 277.183;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in c5.
function c5_Callback(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.c5, handles.fs)

% --- Executes on button press in d5.
function d5_Callback(hObject, eventdata, handles)
% hObject    handle to d5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 587.330;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in e5.
function e5_Callback(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 659.255;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in f5.
function f5_Callback(hObject, eventdata, handles)
% hObject    handle to f5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 698.456;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in g5.
function g5_Callback(hObject, eventdata, handles)
% hObject    handle to g5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 783.991;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in a5.
function a5_Callback(hObject, eventdata, handles)
% hObject    handle to a5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 880;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in b5.
function b5_Callback(hObject, eventdata, handles)
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 987.767;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in ds5.
function ds5_Callback(hObject, eventdata, handles)
% hObject    handle to ds5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 622.254;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in fs5.
function fs5_Callback(hObject, eventdata, handles)
% hObject    handle to fs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 739.989;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in gs5.
function gs5_Callback(hObject, eventdata, handles)
% hObject    handle to gs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 830.609;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in as5.
function as5_Callback(hObject, eventdata, handles)
% hObject    handle to as5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 932.328;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)

% --- Executes on button press in cs5.
function cs5_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fc5 = 523.251;
f = 554.365;
MulFactor = f/fc5;
NewSamplingRate = handles.fs * MulFactor;
sound(handles.c5, NewSamplingRate)
