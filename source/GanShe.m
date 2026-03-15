function varargout = GanShe(varargin)
% GANSHE MATLAB code for GanShe.fig
%      GANSHE, by itself, creates a new GANSHE or raises the existing
%      singleton*.
%
%      H = GANSHE returns the handle to a new GANSHE or the handle to
%      the existing singleton*.
%
%      GANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GANSHE.M with the given input arguments.
%
%      GANSHE('Property','Value',...) creates a new GANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GanShe

% Last Modified by GUIDE v2.5 11-Jan-2024 20:38:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @GanShe_OutputFcn, ...
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


% --- Executes just before GanShe is made visible.
function GanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GanShe (see VARARGIN)

% Choose default command line output for GanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GanShe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in YangShiGanShe.
function YangShiGanShe_Callback(hObject, eventdata, handles)
% hObject    handle to YangShiGanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles1=YangShiGanShe;%取得物理光学仿真界面对象
handles1=guihandles(handles1);%跳转到物理光学仿真界面

% --- Executes on button press in DengHouGanShe.
function DengHouGanShe_Callback(hObject, eventdata, handles)
% hObject    handle to DengHouGanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2=DengHouGanShe;%取得物理光学仿真界面对象
handles2=guihandles(handles2);%跳转到物理光学仿真界面

% --- Executes on button press in DengQingGanShe.
function DengQingGanShe_Callback(hObject, eventdata, handles)
% hObject    handle to DengQingGanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles3=DengQingGanShe;%取得物理光学仿真界面对象
handles3=guihandles(handles3);%跳转到物理光学仿真界面

% --- Executes on button press in FanHui.
function FanHui_Callback(hObject, eventdata, handles)
% hObject    handle to FanHui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles11=WuLiGuangXue;%取得物理光学仿真界面对象
handles11=guihandles(handles11);%跳转到物理光学仿真界面

% --- Executes on button press in FanHuiZhuJieMian.
function FanHuiZhuJieMian_Callback(hObject, eventdata, handles)
% hObject    handle to FanHuiZhuJieMian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles12= ZhuJieMian;%取得光学仿真主界面对象
handles12=guihandles(handles12);%跳转到光学仿真主界面
