function varargout = Activity2Gui(varargin)
% ACTIVITY2GUI MATLAB code for Activity2Gui.fig
%      ACTIVITY2GUI, by itself, creates a new ACTIVITY2GUI or raises the existing
%      singleton*.
%
%      H = ACTIVITY2GUI returns the handle to a new ACTIVITY2GUI or the handle to
%      the existing singleton*.
%
%      ACTIVITY2GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ACTIVITY2GUI.M with the given input arguments.
%
%      ACTIVITY2GUI('Property','Value',...) creates a new ACTIVITY2GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Activity2Gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Activity2Gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Activity2Gui

% Last Modified by GUIDE v2.5 10-Apr-2018 00:24:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Activity2Gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Activity2Gui_OutputFcn, ...
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


% --- Executes just before Activity2Gui is made visible.
function Activity2Gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Activity2Gui (see VARARGIN)

% Choose default command line output for Activity2Gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Activity2Gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Activity2Gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
im5=imrotate(im1,-45);
axes(handles.axes1);
imshow(im5), title 'Rotated Clockwise';

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
imtr=transpose(im1);
axes(handles.axes1);
imshow(imtr),title 'Transposed Image';

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
imup=flipud(im1);
axes(handles.axes1);
imshow(imup), title 'Flipped Image upside down';

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('cameraman.tif');
imlr=fliplr(im1);
axes(handles.axes1);
imshow(imlr),title 'Flipped Image from left to right';

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im2=imread('circuit.tif');
im1=imread('cameraman.tif');
im2=imresize(im2,size(im1));
im4=imsubtract(im1,im2);
axes(handles.axes1);
imshow(im4),title 'Image4-Subtract 2 image';

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im2=imread('circuit.tif');
im1=imread('cameraman.tif');
im2=imresize(im2,size(im1));
im3=imadd(im1,im2);
axes(handles.axes1);
imshow(im3),title ' Image3 - Add 2 image';

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im2=imread('circuit.tif');
axes(handles.axes1);
imshow(im2),title 'Image2 - Circuit';

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
axes(handles.axes1);
imshow(im1),title 'Image 1 -Cameraman';


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('cameraman.tif');
axes(handles.axes1);
im6=imrotate(im1,45);
imshow(im6),title 'Rotated Counterclockwise';

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
im7=im1(1:end, 1:end); %read rows and columns of image1
axes(handles.axes1);
imshow(im7),title 'Original Image';

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
im7a=im1(1:2:end, 1:2:end);
axes(handles.axes1);
imshow(im7a),title 'Half size image';

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
im8=im1(1:2:end,1:end);
axes(handles.axes1);
imshow(im8), title ' Half Height';

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
axes(handles.axes1);
im9=im1(1:end, 1:2:end);
imshow(im9), title 'Half width';

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
axes(handles.axes1);
im10=[im1 im1; im1,im1];
imshow(im10),title '2x2';


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
axes(handles.axes1);
im11=repmat(im1,3,4);
imshow(im11), title '3x4 cols';
