function varargout = MusicMania(varargin)
% MUSICMANIA MATLAB code for MusicMania.fig
%      MUSICMANIA, by itself, creates a new MUSICMANIA or raises the existing
%      singleton*.
%
%      H = MUSICMANIA returns the handle to a new MUSICMANIA or the handle to
%      the existing singleton*.
%
%      MUSICMANIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUSICMANIA.M with the given input arguments.
%
%      MUSICMANIA('Property','Value',...) creates a new MUSICMANIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MusicMania_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MusicMania_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MusicMania

% Last Modified by GUIDE v2.5 07-Apr-2017 20:16:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MusicMania_OpeningFcn, ...
                   'gui_OutputFcn',  @MusicMania_OutputFcn, ...
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


% --- Executes just before MusicMania is made visible.
function MusicMania_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MusicMania (see VARARGIN)

% Choose default command line output for MusicMania
handles.output = hObject;

%setting the background
axes(handles.bg);
imshow('bg.png');
%loading the audiofiles
handles.c4=audioread('39187__jobro__piano-ff-040.wav');
handles.d4=audioread('39189__jobro__piano-ff-042.wav');
handles.e4=audioread('39191__jobro__piano-ff-044.wav');
handles.f4=audioread('39193__jobro__piano-ff-045.wav');
handles.g4=audioread('39195__jobro__piano-ff-047.wav');
handles.a4=audioread('39197__jobro__piano-ff-049.wav');
handles.b4=audioread('39199__jobro__piano-ff-051.wav');
handles.c5=audioread('39200__jobro__piano-ff-052.wav');
handles.d5=audioread('39202__jobro__piano-ff-054.wav');
handles.e5=audioread('39204__jobro__piano-ff-056.wav');
handles.f5=audioread('39205__jobro__piano-ff-057.wav');
handles.g5=audioread('39207__jobro__piano-ff-059.wav');
handles.a5=audioread('39209__jobro__piano-ff-061.wav');
handles.b5=audioread('39211__jobro__piano-ff-063.wav');
handles.cs4=audioread('39188__jobro__piano-ff-041.wav');
handles.ds4=audioread('39190__jobro__piano-ff-043.wav');
handles.fs4=audioread('39194__jobro__piano-ff-046.wav');
handles.gs4=audioread('39196__jobro__piano-ff-048.wav');
handles.as4=audioread('39198__jobro__piano-ff-050.wav');
handles.cs5=audioread('39201__jobro__piano-ff-053.wav');
handles.ds5=audioread('39203__jobro__piano-ff-055.wav');
handles.fs5=audioread('39206__jobro__piano-ff-058.wav');
handles.gs5=audioread('39208__jobro__piano-ff-060.wav');
handles.as5=audioread('39210__jobro__piano-ff-062.wav');
handles.hh=0.5.*audioread('Hi-Hat.wav');
handles.cc1=0.5.*audioread('Crash-Cymbal-1.wav');
handles.cc2=0.5.*audioread('Crash-Cymbal-2.wav');
handles.sd=0.5.*audioread('Snare-Drum.wav');
handles.ft1=0.5.*audioread('Floor-Tom-1.wav');
handles.ft2=0.5.*audioread('Floor-Tom-2.wav');
handles.bd=5.*audioread('Bass-Drum.wav');
handles.st=0.5.*audioread('Small-Tom.wav');
handles.mt=0.5.*audioread('Mid-Tom.wav');
handles.rc=0.5.*audioread('Ride-Cymbal.wav');
%flag for recording


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MusicMania wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MusicMania_OutputFcn(hObject, eventdata, handles) 
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
%global handles.c4;
sound(handles.c4);


% --- Executes on button press in d4.
function d4_Callback(hObject, eventdata, handles)
% hObject    handle to d4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.d4);


% --- Executes on button press in e4.
function e4_Callback(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.e4);


% --- Executes on button press in f4.
function f4_Callback(hObject, eventdata, handles)
% hObject    handle to f4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.f4);


% --- Executes on button press in g4.
function g4_Callback(hObject, eventdata, handles)
% hObject    handle to g4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.g4);


% --- Executes on button press in a4.
function a4_Callback(hObject, eventdata, handles)
% hObject    handle to a4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.a4);


% --- Executes on button press in b4.
function b4_Callback(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.b4);


% --- Executes on button press in c5.
function c5_Callback(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.c5);


% --- Executes on button press in d5.
function d5_Callback(hObject, eventdata, handles)
% hObject    handle to d5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.d5);


% --- Executes on button press in e5.
function e5_Callback(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.e5);


% --- Executes on button press in f5.
function f5_Callback(hObject, eventdata, handles)
% hObject    handle to f5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.f5);


% --- Executes on button press in g5.
function g5_Callback(hObject, eventdata, handles)
% hObject    handle to g5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.g5);


% --- Executes on button press in a5.
function a5_Callback(hObject, eventdata, handles)
% hObject    handle to a5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.a5);


% --- Executes on button press in b5.
function b5_Callback(hObject, eventdata, handles)
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.b5);


% --- Executes on button press in cs4.
function cs4_Callback(hObject, eventdata, handles)
% hObject    handle to cs4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.cs4);


% --- Executes on button press in ds4.
function ds4_Callback(hObject, eventdata, handles)
% hObject    handle to ds4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.ds4);


% --- Executes on button press in fs4.
function fs4_Callback(hObject, eventdata, handles)
% hObject    handle to fs4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.fs4);


% --- Executes on button press in gs4.
function gs4_Callback(hObject, eventdata, handles)
% hObject    handle to gs4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.gs4);


% --- Executes on button press in as4.
function as4_Callback(hObject, eventdata, handles)
% hObject    handle to as4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.as4);


% --- Executes on button press in cs5.
function cs5_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.cs5);


% --- Executes on button press in ds5.
function ds5_Callback(hObject, eventdata, handles)
% hObject    handle to ds5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.ds5);


% --- Executes on button press in fs5.
function fs5_Callback(hObject, eventdata, handles)
% hObject    handle to fs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.fs5);


% --- Executes on button press in gs5.
function gs5_Callback(hObject, eventdata, handles)
% hObject    handle to gs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.gs5);


% --- Executes on button press in as5.
function as5_Callback(hObject, eventdata, handles)
% hObject    handle to as5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.as5);


% --- Executes on button press in cs5.
function hh_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.hh);


% --- Executes on button press in cs5.
function sd_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.sd);


% --- Executes on button press in cs5.
function mt_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.mt);


% --- Executes on button press in cs5.
function st_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.st);


% --- Executes on button press in cs5.
function ft1_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.ft1);


% --- Executes on button press in cs5.
function ft2_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.ft2);



% --- Executes on button press in cs5.
function cc1_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.cc1);


% --- Executes on button press in cs5.
function cc2_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.cc2);


% --- Executes on button press in cs5.
function rc_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.rc);


% --- Executes on button press in cs5.
function bd_Callback(hObject, eventdata, handles)
% hObject    handle to cs5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.bd);



% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c = get(gcf,'CurrentPoint');
hihat = [483 431];
crash_cymbal1 = [521 518];
small_tom = [600 510];
snare_drum = [568 407];
medium_tom = [748 543];
floor_tom1 = [855 401];
floor_tom2 = [811 472];
ride_cymbal = [876 533];
crash_cymbal2 = [924 445];%43
bass_drum = [692 449];%55
dhihat = sqrt(((c(1,2)-hihat(1,2))^2)+((c(1,1)-hihat(1,1))^2));
dcrash_cymbal1 = sqrt(((c(1,2)-crash_cymbal1(1,2))^2)+((c(1,1)-crash_cymbal1(1,1))^2));
dsmall_tom = sqrt(((c(1,2)-small_tom(1,2))^2)+((c(1,1)-small_tom(1,1))^2));
dsnare_drum = sqrt(((c(1,2)-snare_drum(1,2))^2)+((c(1,1)-snare_drum(1,1))^2));
dmedium_tom = sqrt(((c(1,2)-medium_tom(1,2))^2)+((c(1,1)-medium_tom(1,1))^2));
dfloor_tom1 = sqrt(((c(1,2)-floor_tom1(1,2))^2)+((c(1,1)-floor_tom1(1,1))^2));
dfloor_tom2 = sqrt(((c(1,2)-floor_tom2(1,2))^2)+((c(1,1)-floor_tom2(1,1))^2));
dride_cymbal = sqrt(((c(1,2)-ride_cymbal(1,2))^2)+((c(1,1)-ride_cymbal(1,1))^2));
dcrash_cymbal2 = sqrt(((c(1,2)-crash_cymbal2(1,2))^2)+((c(1,1)-crash_cymbal2(1,1))^2));
dbass_drum = sqrt(((c(1,2)-bass_drum(1,2))^2)+((c(1,1)-bass_drum(1,1))^2));
if dcrash_cymbal1<57
    set(gcf,'Pointer','hand');
else if dhihat<43
    set(gcf,'Pointer','hand');
    else if dsmall_tom < 42
            set(gcf,'Pointer','hand');
        else if dsnare_drum < 47
                set(gcf,'Pointer','hand');
            else
            set(gcf,'Pointer','arrow');
            end
        end
    end
end
if dmedium_tom < 38
    set(gcf,'Pointer','hand');
end
if dfloor_tom1 < 55
    set(gcf,'Pointer','hand');
else if dfloor_tom2 < 40
        set(gcf,'Pointer','hand');
    end
end
if dcrash_cymbal2 < 43
    set(gcf,'Pointer','hand');
else if dride_cymbal < 60
    set(gcf,'Pointer','hand')
    end
end
if dbass_drum < 40
    set(gcf,'Pointer','hand');
end


% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
eventdata.Key;
switch eventdata.Key
    case 'q'
        c4_Callback(handles.c4, [] , handles);
    case 'w'
        d4_Callback(handles.d4, [] , handles);
    case 'e'
        e4_Callback(handles.e4, [] , handles);
    case 'r'
        f4_Callback(handles.f4, [] , handles);
    case 't'
        g4_Callback(handles.g4, [] , handles);
    case 'y'
        a4_Callback(handles.a4, [] , handles);
    case 'u'
        b4_Callback(handles.b4, [] , handles);
    case 'i'
        c5_Callback(handles.c5, [] , handles);
    case 'o'
        d5_Callback(handles.d5, [] , handles);
    case 'p'
        e5_Callback(handles.e5, [] , handles);
    case 'leftbracket'
        f5_Callback(handles.f5, [] , handles);
    case 'rightbracket'
        g5_Callback(handles.g5, [] , handles);
    case 'backslash'
        a5_Callback(handles.a5, [] , handles);
    case 'numpad7'
        b5_Callback(handles.b5, [] , handles);
    case '1'
        cs4_Callback(handles.cs4, [] , handles);
    case '2'
        ds4_Callback(handles.cs4, [] , handles);
    case '3'
        fs4_Callback(handles.cs4, [] , handles);
    case '4'
        gs4_Callback(handles.cs4, [] , handles);
    case '5'
        as4_Callback(handles.cs4, [] , handles);
    case '6'
        cs5_Callback(handles.cs4, [] , handles);
    case '7'
        ds5_Callback(handles.cs4, [] , handles);
    case '8'
        fs5_Callback(handles.cs4, [] , handles);
    case '9'
        gs5_Callback(handles.cs4, [] , handles);
    case '0'
        as5_Callback(handles.cs4, [] , handles);
    case 'x'
        hh_Callback(handles.hh, [] , handles);
    case 'numpad1'
        hh_Callback(handles.hh, [] , handles);
    case 'd'
        cc1_Callback(handles.cc1, [] , handles);
    case 'numpad4'
        cc1_Callback(handles.cc1, [] , handles);
    case 'c'
        sd_Callback(handles.sd, [] , handles);
    case 'numpad0'
        sd_Callback(handles.sd, [] , handles);
    case 'f'
        st_Callback(handles.st, [] , handles);
    case 'numpad2'
        st_Callback(handles.st, [] , handles);
    case 'space'
        bd_Callback(handles.bd, [] , handles);
    case 'add'
        bd_Callback(handles.bd, [] , handles);
    case 'g'
        mt_Callback(handles.mt, [] , handles);
    case 'numpad5'
        mt_Callback(handles.mt, [] , handles);
    case 'n'
        ft1_Callback(handles.ft1, [] , handles);
    case 'numpad6'
        ft1_Callback(handles.ft1, [] , handles);
    case 'b'
        ft2_Callback(handles.ft2, [] , handles);
    case 'numpad3'
        ft2_Callback(handles.ft2, [] , handles);
    case 'h'
        rc_Callback(handles.rc, [] , handles);
    case 'numpad8'
        rc_Callback(handles.rc, [] , handles);
    case 'm'
        cc2_Callback(handles.cc2, [] , handles);
    case 'numpad9'
        cc2_Callback(handles.cc2, [] , handles);
end


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c = get(gcf,'CurrentPoint')
hihat = [483 431];
crash_cymbal1 = [521 518];
small_tom = [600 510];
snare_drum = [568 407];
medium_tom = [748 543];
floor_tom1 = [855 401];
floor_tom2 = [811 472];
ride_cymbal = [876 533];
crash_cymbal2 = [924 445];%43
bass_drum = [692 449];%55
dhihat = sqrt(((c(1,2)-hihat(1,2))^2)+((c(1,1)-hihat(1,1))^2));
dcrash_cymbal1 = sqrt(((c(1,2)-crash_cymbal1(1,2))^2)+((c(1,1)-crash_cymbal1(1,1))^2));
dsmall_tom = sqrt(((c(1,2)-small_tom(1,2))^2)+((c(1,1)-small_tom(1,1))^2));
dsnare_drum = sqrt(((c(1,2)-snare_drum(1,2))^2)+((c(1,1)-snare_drum(1,1))^2));
dmedium_tom = sqrt(((c(1,2)-medium_tom(1,2))^2)+((c(1,1)-medium_tom(1,1))^2));
dfloor_tom1 = sqrt(((c(1,2)-floor_tom1(1,2))^2)+((c(1,1)-floor_tom1(1,1))^2));
dfloor_tom2 = sqrt(((c(1,2)-floor_tom2(1,2))^2)+((c(1,1)-floor_tom2(1,1))^2));
dride_cymbal = sqrt(((c(1,2)-ride_cymbal(1,2))^2)+((c(1,1)-ride_cymbal(1,1))^2));
dcrash_cymbal2 = sqrt(((c(1,2)-crash_cymbal2(1,2))^2)+((c(1,1)-crash_cymbal2(1,1))^2));
dbass_drum = sqrt(((c(1,2)-bass_drum(1,2))^2)+((c(1,1)-bass_drum(1,1))^2));
if dcrash_cymbal1<57
    sound(handles.cc1);
else if dhihat<43
    sound(handles.hh);
    else if dsmall_tom < 42
            sound(handles.st);
        else if dsnare_drum < 47
                sound(handles.sd);
            end
        end
    end
end
if dmedium_tom < 38
    sound(handles.mt);
end
if dfloor_tom1 < 55
    sound(handles.ft1);
else if dfloor_tom2 < 40
        sound(handles.ft2);
    end
end
if dcrash_cymbal2 < 43
    sound(handles.cc2);
else if dride_cymbal < 60
    sound(handles.rc);
    end
end
if dbass_drum < 40
    sound(handles.bd);
end


% --- Executes on button press in record.
function record_Callback(hObject, eventdata, handles)
% hObject    handle to record (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.status,'String','Listening...');
