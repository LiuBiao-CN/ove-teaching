function varargout = YanShe(varargin)
% YANSHE MATLAB code for YanShe.fig
%      YANSHE, by itself, creates a new YANSHE or raises the existing
%      singleton*.
%
%      H = YANSHE returns the handle to a new YANSHE or the handle to
%      the existing singleton*.
%
%      YANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YANSHE.M with the given input arguments.
%
%      YANSHE('Property','Value',...) creates a new YANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before YanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to YanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help YanShe

% Last Modified by GUIDE v2.5 23-May-2024 18:01:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @YanShe_OutputFcn, ...
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


% --- Executes just before YanShe is made visible.
function YanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to YanShe (see VARARGIN)

% Choose default command line output for YanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes YanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = YanShe_OutputFcn(hObject, eventdata, handles) 
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
handles2= WuLiGuangXue;%取得光学仿真物理光学界面对象
handles2=guihandles(handles2);%跳转到光学仿真物理光学界面


% --- Executes on button press in FuLangHeFeiYanShe.
function FuLangHeFeiYanShe_Callback(hObject, eventdata, handles)
% hObject    handle to FuLangHeFeiYanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles3= FuLangHeFeiYanShe;%取得光学仿真夫琅和费衍射界面对象
handles3=guihandles(handles3);%跳转到光学仿真夫琅和费衍射界面

% --- Executes on button press in LangQiGuangShanYanShe.
function LangQiGuangShanYanShe_Callback(hObject, eventdata, handles)
% hObject    handle to LangQiGuangShanYanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles11= LangQiGuangShanYanShe;%取得光学仿真朗奇(黑白)光栅衍射界面对象
handles11=guihandles(handles11);%跳转到光学仿真朗奇(黑白)光栅衍射界面

% --- Executes on button press in FeiNieErYanShe.
function FeiNieErYanShe_Callback(hObject, eventdata, handles)
% hObject    handle to FeiNieErYanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles12= FeiNieErYanShe;%取得光学仿真菲涅尔衍射界面对象
handles12=guihandles(handles12);%跳转到光学仿真菲涅尔衍射界面

% --- Executes on button press in ShanYaoGuanShanYanShe.
function ShanYaoGuanShanYanShe_Callback(hObject, eventdata, handles)
% hObject    handle to ShanYaoGuanShanYanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles13= ShanYaoGuanShanYanShe;%取得光学仿真闪耀光栅衍射界面对象
handles13=guihandles(handles13);%跳转到光学仿真闪耀光栅衍射界面

% --- Executes on button press in JieTiGuangShanYanShe.
function JieTiGuangShanYanShe_Callback(hObject, eventdata, handles)
% hObject    handle to JieTiGuangShanYanShe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles21= JieTiGuangShanYanShe;%取得光学仿真阶梯光栅衍射界面对象
handles21=guihandles(handles21);%跳转到光学仿真阶梯光栅衍射界面


% --- Executes on button press in RenYuTuXingYanShePushbutton.
function RenYuTuXingYanShePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to RenYuTuXingYanShePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles21= RenYuTuXingYanShe;%取得光学仿真阶梯光栅衍射界面对象
handles21=guihandles(handles21);%跳转到光学仿真阶梯光栅衍射界面


% --- Executes on button press in JuKongPushbutton.
function JuKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to JuKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles21= JuKongYanShe;%取得光学仿真阶梯光栅衍射界面对象
handles21=guihandles(handles21);%跳转到光学仿真阶梯光栅衍射界面


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles12= FeiNieErYanShe;%取得光学仿真菲涅尔衍射界面对象
handles12=guihandles(handles12);%跳转到光学仿真菲涅尔衍射界面

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles21= RenYuTuXingYanShe;%取得光学仿真阶梯光栅衍射界面对象
handles21=guihandles(handles21);%跳转到光学仿真阶梯光栅衍射界面


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles21= JuKongYanShe;%取得光学仿真阶梯光栅衍射界面对象
handles21=guihandles(handles21);%跳转到光学仿真阶梯光栅衍射界面
