function varargout = DengQingGanShe(varargin)
% DENGQINGGANSHE MATLAB code for DengQingGanShe.fig
%      DENGQINGGANSHE, by itself, creates a new DENGQINGGANSHE or raises the existing
%      singleton*.
%
%      H = DENGQINGGANSHE returns the handle to a new DENGQINGGANSHE or the handle to
%      the existing singleton*.
%
%      DENGQINGGANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DENGQINGGANSHE.M with the given input arguments.
%
%      DENGQINGGANSHE('Property','Value',...) creates a new DENGQINGGANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DengQingGanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DengQingGanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DengQingGanShe

% Last Modified by GUIDE v2.5 11-Jan-2024 22:19:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DengQingGanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @DengQingGanShe_OutputFcn, ...
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


% --- Executes just before DengQingGanShe is made visible.
function DengQingGanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DengQingGanShe (see VARARGIN)

% Choose default command line output for DengQingGanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DengQingGanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DengQingGanShe_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in MaiKeErXvnGanShe.
function MaiKeErXvnGanShe_Callback(hObject, eventdata, handles)
% hObject    handle to MaiKeErXvnGanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles3= MaiKeErXvnGanShe;%取得迈克尔逊干涉仿真界面对象
handles3=guihandles(handles3);%跳转到迈克尔逊干涉仿真界面

% --- Executes on button press in FaBuLiBoLuoGanShe.
function FaBuLiBoLuoGanShe_Callback(hObject, eventdata, handles)
% hObject    handle to FaBuLiBoLuoGanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles11= FaBuLiBoLuoGanShe;%取得法布里-珀罗干涉仪仿真界面对象
handles11=guihandles(handles11);%跳转到法布里-珀罗干涉仪仿真界面
