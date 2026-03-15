function varargout = ZhuJieMian(varargin)
% ZHUJIEMIAN MATLAB code for ZhuJieMian.fig
%      ZHUJIEMIAN, by itself, creates a new ZHUJIEMIAN or raises the existing
%      singleton*.
%
%      H = ZHUJIEMIAN returns the handle to a new ZHUJIEMIAN or the handle to
%      the existing singleton*.
%
%      ZHUJIEMIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZHUJIEMIAN.M with the given input arguments.
%
%      ZHUJIEMIAN('Property','Value',...) creates a new ZHUJIEMIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ZhuJieMian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ZhuJieMian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ZhuJieMian

% Last Modified by GUIDE v2.5 09-Apr-2024 20:45:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ZhuJieMian_OpeningFcn, ...
                   'gui_OutputFcn',  @ZhuJieMian_OutputFcn, ...
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


% --- Executes just before ZhuJieMian is made visible.
function ZhuJieMian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ZhuJieMian (see VARARGIN)
axes(handles.axes1);%显示杨氏双孔干涉原理图
imshow('光学实验.PNG');%显示杨氏双孔干涉原理图
% Choose default command line output for ZhuJieMian
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ZhuJieMian wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = ZhuJieMian_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in WuliGuangXuePushbutton.
function WuliGuangXuePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to WuliGuangXuePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles1= WuLiGuangXue;%取得物理光学仿真界面对象
handles1=guihandles(handles1);%跳转到物理光学仿真界面



% --- Executes on button press in XinXiGuangXuePushbutton.
function XinXiGuangXuePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to XinXiGuangXuePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2= XinXiGuangXue;%取得信息光学仿真界面对象
handles2=guihandles(handles2);%跳转到信息光学仿真界面


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on key release with focus on figure1 and none of its controls.
function figure1_KeyReleaseFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was released, in lower case
%	Character: character interpretation of the key(s) that was released
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) released
% handles    structure with handles and user data (see GUIDATA)
