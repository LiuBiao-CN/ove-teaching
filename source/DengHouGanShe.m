function varargout = DengHouGanShe(varargin)
% DENGHOUGANSHE MATLAB code for DengHouGanShe.fig
%      DENGHOUGANSHE, by itself, creates a new DENGHOUGANSHE or raises the existing
%      singleton*.
%
%      H = DENGHOUGANSHE returns the handle to a new DENGHOUGANSHE or the handle to
%      the existing singleton*.
%
%      DENGHOUGANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DENGHOUGANSHE.M with the given input arguments.
%
%      DENGHOUGANSHE('Property','Value',...) creates a new DENGHOUGANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DengHouGanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DengHouGanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DengHouGanShe

% Last Modified by GUIDE v2.5 24-Mar-2024 21:54:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DengHouGanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @DengHouGanShe_OutputFcn, ...
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


% --- Executes just before DengHouGanShe is made visible.
function DengHouGanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DengHouGanShe (see VARARGIN)

% Choose default command line output for DengHouGanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DengHouGanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DengHouGanShe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in FanHuiZhuJieMian.
function FanHuiZhuJieMian_Callback(hObject, eventdata, handles)
% hObject    handle to FanHuiZhuJieMian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles1= ZhuJieMian;%取得光学仿真主界面对象
handles1=guihandles(handles1);%跳转到光学仿真主界面

% --- Executes on button press in FanHui.
function FanHui_Callback(hObject, eventdata, handles)
% hObject    handle to FanHui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2= GanShe;%取得光学仿真主界面对象
handles2=guihandles(handles2);%跳转到光学仿真主界面


% --- Executes on button press in NiuDunHuan.
function NiuDunHuan_Callback(hObject, eventdata, handles)
% hObject    handle to NiuDunHuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2= NiuDunHuan;%取得牛顿环仿真实验界面对象
handles2=guihandles(handles2);%跳转到牛顿环仿真实验界面

% --- Executes on button press in PiJianGanShe.
function PiJianGanShe_Callback(hObject, eventdata, handles)
% hObject    handle to PiJianGanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2= PiJianGanShe;%取得劈尖干涉仿真实验界面对象
handles2=guihandles(handles2);%跳转到劈尖干涉仿真实验界面
