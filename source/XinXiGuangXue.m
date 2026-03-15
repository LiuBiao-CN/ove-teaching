function varargout = XinXiGuangXue(varargin)
% XINXIGUANGXUE MATLAB code for XinXiGuangXue.fig
%      XINXIGUANGXUE, by itself, creates a new XINXIGUANGXUE or raises the existing
%      singleton*.
%
%      H = XINXIGUANGXUE returns the handle to a new XINXIGUANGXUE or the handle to
%      the existing singleton*.
%
%      XINXIGUANGXUE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in XINXIGUANGXUE.M with the given input arguments.
%
%      XINXIGUANGXUE('Property','Value',...) creates a new XINXIGUANGXUE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before XinXiGuangXue_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to XinXiGuangXue_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help XinXiGuangXue

% Last Modified by GUIDE v2.5 16-Feb-2024 20:08:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @XinXiGuangXue_OpeningFcn, ...
                   'gui_OutputFcn',  @XinXiGuangXue_OutputFcn, ...
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


% --- Executes just before XinXiGuangXue is made visible.
function XinXiGuangXue_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to XinXiGuangXue (see VARARGIN)

% Choose default command line output for XinXiGuangXue
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes XinXiGuangXue wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = XinXiGuangXue_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in KongJianLvBo.
function KongJianLvBo_Callback(hObject, eventdata, handles)
% hObject    handle to KongJianLvBo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles1= KongJianLvBo;%取得光学仿真空间滤波界面对象
handles1=guihandles(handles1);%跳转到光学仿真空间滤波界面

% --- Executes on button press in TheTaTiaoZhi.
function TheTaTiaoZhi_Callback(hObject, eventdata, handles)
% hObject    handle to TheTaTiaoZhi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2= TheTaTiaoZhi;%取得光学仿真θ调制界面对象
handles2=guihandles(handles2);%跳转到光学仿真θ调制界面

% --- Executes on button press in LiZhouQanXiYvZaiXian.
function LiZhouQanXiYvZaiXian_Callback(hObject, eventdata, handles)
% hObject    handle to LiZhouQanXiYvZaiXian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles3= LiZhouQanXiYvZaiXian;%取得光学仿真离轴全息以及再现实验界面对象
handles3=guihandles(handles3);%跳转到光学仿真离轴全息以及再现实验界面

% --- Executes on button press in FanHuiZhuJieMian.
function FanHuiZhuJieMian_Callback(hObject, eventdata, handles)
% hObject    handle to FanHuiZhuJieMian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles11= ZhuJieMian;%取得光学仿真主界面对象
handles11=guihandles(handles11);%跳转到光学仿真主界面

% --- Executes on button press in ShuangBaoGuangQianXiPushbutton.
function ShuangBaoGuangQianXiPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ShuangBaoGuangQianXiPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles12=ShuangBaoGuangQianXi;%取得光学仿真离轴全息以及再现实验界面对象
handles12=guihandles(handles12);%跳转到光学仿真离轴全息以及再现实验界面
