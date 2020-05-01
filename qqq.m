function varargout = qqq(varargin)
% QQQ MATLAB code for qqq.fig
%      QQQ, by itself, creates a new QQQ or raises the existing
%      singleton*.
%
%      H = QQQ returns the handle to a new QQQ or the handle to
%      the existing singleton*.
%
%      QQQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QQQ.M with the given input arguments.
%
%      QQQ('Property','Value',...) creates a new QQQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before qqq_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to qqq_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help qqq

% Last Modified by GUIDE v2.5 13-Apr-2018 13:25:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @qqq_OpeningFcn, ...
                   'gui_OutputFcn',  @qqq_OutputFcn, ...
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


% --- Executes just before qqq is made visible.
function qqq_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to qqq (see VARARGIN)

% Choose default command line output for qqq
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes qqq wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = qqq_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
myImage0 = imread('hestain.png');
axes(handles.axes1);
imshow(myImage0);
myImage1 = imread('coins.png');
axes(handles.axes2);
imshow(myImage1);
myImage2 = imread('coloredChips.png');
axes(handles.axes3);
imshow(myImage2);
myImage3 = imread('fabric.png');
axes(handles.axes4);
imshow(myImage3);
myImage4 = imread('bag.png');
axes(handles.axes5);
imshow(myImage4);

axes(handles.axes6);
imshow(myImage0);
axes(handles.axes7);
imshow(myImage1);
axes(handles.axes8);
imshow(myImage2);
axes(handles.axes9);
imshow(myImage3);
axes(handles.axes10);
imshow(myImage4);

axes(handles.axes11);
imshow(myImage1);
axes(handles.axes12);
imshow(myImage2);
axes(handles.axes13);
imshow(myImage3);
axes(handles.axes14);
imshow(myImage4);



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
myImage0 = imread('hestain.png');
rotIm0 = imrotate(myImage0, 90);
axes(handles.axes1);
imshow(rotIm0);

myImage1 = imread('coins.png');
rotIm1 = imrotate(myImage1, -90);
axes(handles.axes2);
imshow(rotIm1);

myImage2 = imread('coloredChips.png');
rotIm2 = imrotate(myImage2, -45);
axes(handles.axes3);
imshow(rotIm2);

myImage3 = imread('fabric.png');
rotIm3 = imrotate(myImage3, -80);
axes(handles.axes4);
imshow(rotIm3);

myImage4 = imread('bag.png');
rotIm4 = imrotate(myImage4, 45);
axes(handles.axes5);
imshow(rotIm4);

axes(handles.axes6);
imshow(rotIm0);

axes(handles.axes7);
imshow(rotIm1);


axes(handles.axes8);
imshow(rotIm2);

axes(handles.axes9);
imshow(rotIm3);


axes(handles.axes10);
imshow(rotIm4);

axes(handles.axes11);
imshow(rotIm0);

axes(handles.axes12);
imshow(rotIm1);


axes(handles.axes13);
imshow(rotIm2);

axes(handles.axes14);
imshow(rotIm3);

