function varargout = ShanYaoGuanShanYanShe(varargin)
% SHANYAOGUANSHANYANSHE MATLAB code for ShanYaoGuanShanYanShe.fig
%      SHANYAOGUANSHANYANSHE, by itself, creates a new SHANYAOGUANSHANYANSHE or raises the existing
%      singleton*.
%
%      H = SHANYAOGUANSHANYANSHE returns the handle to a new SHANYAOGUANSHANYANSHE or the handle to
%      the existing singleton*.
%
%      SHANYAOGUANSHANYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHANYAOGUANSHANYANSHE.M with the given input arguments.
%
%      SHANYAOGUANSHANYANSHE('Property','Value',...) creates a new SHANYAOGUANSHANYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ShanYaoGuanShanYanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ShanYaoGuanShanYanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ShanYaoGuanShanYanShe

% Last Modified by GUIDE v2.5 12-Mar-2024 21:48:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ShanYaoGuanShanYanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @ShanYaoGuanShanYanShe_OutputFcn, ...
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


% --- Executes just before ShanYaoGuanShanYanShe is made visible.
function ShanYaoGuanShanYanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ShanYaoGuanShanYanShe (see VARARGIN)

% Choose default command line output for ShanYaoGuanShanYanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('闪耀光栅衍射原理图.jpg');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.CaoMianKuanEdit,'enable','off');
set(handles.CaoMianKuanSlider,'enable','off');
set(handles.CaoMianJianJvEdit,'enable','off');
set(handles.CaoMianJianJvSlider,'enable','off');
set(handles.RuShejiaoEdit,'enable','off');
set(handles.RuShejiaoSlider,'enable','off');
set(handles.CaoMianShuEdit,'enable','off');
set(handles.CaoMianShuSlider,'enable','off');
set(handles.ShanYaoJiaoEdit,'enable','off');
set(handles.ShanYaoJiaoSlider,'enable','off');
set(handles.YanSheJiaoEdit,'enable','off');
set(handles.YanSheJiaoSlider,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ShanYaoGuanShanYanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ShanYaoGuanShanYanShe_OutputFcn(hObject, eventdata, handles) 
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
handles2= YanShe;%取得光学仿真衍射界面对象
handles2=guihandles(handles2);%跳转到光学仿真衍射界面



function YanSheJiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YanSheJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YanSheJiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of YanSheJiaoEdit as a double


% --- Executes during object creation, after setting all properties.
function YanSheJiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YanSheJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function YanSheJiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to YanSheJiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.YanSheJiaoSlider,'Value');%获取实验中最大衍射角滑动条的值
set(handles.YanSheJiaoEdit,'String',num2str(var));%将滑动条的值(最大衍射角)转换成字符串然后赋给对应文本框
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=var;%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function YanSheJiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YanSheJiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in YuanShePushbutton.
function YuanShePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to YuanShePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.CaoMianKuanEdit,'enable','on');
set(handles.CaoMianKuanSlider,'enable','on');
set(handles.CaoMianJianJvEdit,'enable','on');
set(handles.CaoMianJianJvSlider,'enable','on');
set(handles.RuShejiaoEdit,'enable','on');
set(handles.RuShejiaoSlider,'enable','on');
set(handles.CaoMianShuEdit,'enable','on');
set(handles.CaoMianShuSlider,'enable','on');
set(handles.ShanYaoJiaoEdit,'enable','on');
set(handles.ShanYaoJiaoSlider,'enable','on');
set(handles.YanSheJiaoEdit,'enable','on');
set(handles.YanSheJiaoSlider,'enable','on');
set(handles.QingKongPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);
%多光束的叠加
%u=zeros(size(y,1),size(y,2));%预设初始光场
%for mm=1:N
%    u=u+sin(alpha)./alpha.*exp(1j.*(mm-1).*deta);%光场叠加
%end
% II=u.*conj(u);%闪耀光栅（Blzed grating）衍射光强
% axes(handles.axes2);axis on;%调用干涉图样坐标
% plot(theta,II(size(y,1)/2,:))%闪耀光栅（Blzed grating）衍射总体情况中间剖线
% axes(handles.axes3);%调用干涉图样坐标
% imshow(II,[0,max(II(:))])%闪耀光栅（Blzed grating）衍射总体情况


% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
xlabel('');ylabel('');legend('off');
axis off;
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域


function ShanYaoJiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ShanYaoJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ShanYaoJiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of ShanYaoJiaoEdit as a double


% --- Executes during object creation, after setting all properties.
function ShanYaoJiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShanYaoJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ShanYaoJiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ShanYaoJiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.ShanYaoJiaoSlider,'Value');%获取实验中闪耀角滑动条的值
set(handles.ShanYaoJiaoEdit,'String',num2str(var));%将滑动条的值(闪耀角)转换成字符串然后赋给对应文本框
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=var;%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ShanYaoJiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShanYaoJiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function CaoMianShuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to CaoMianShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CaoMianShuEdit as text
%        str2double(get(hObject,'String')) returns contents of CaoMianShuEdit as a double
var = str2double(get(handles.CaoMianShuEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function CaoMianShuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CaoMianShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function CaoMianShuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to CaoMianShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.CaoMianShuSlider,'Value');%获取实验中槽面个数滑动条的值
set(handles.CaoMianShuEdit,'String',num2str(var));%将滑动条的值(槽面个数)转换成字符串然后赋给对应文本框
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=var;%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function CaoMianShuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CaoMianShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function RuShejiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to RuShejiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RuShejiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of RuShejiaoEdit as a double


% --- Executes during object creation, after setting all properties.
function RuShejiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RuShejiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function RuShejiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to RuShejiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.RuShejiaoSlider,'Value');%获取实验中入射角滑动条的值
set(handles.RuShejiaoEdit,'String',num2str(var));%将滑动条的值(入射角)转换成字符串然后赋给对应文本框
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=var;%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function RuShejiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RuShejiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function CaoMianJianJvEdit_Callback(hObject, eventdata, handles)
% hObject    handle to CaoMianJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CaoMianJianJvEdit as text
%        str2double(get(hObject,'String')) returns contents of CaoMianJianJvEdit as a double
var = str2double(get(handles.CaoMianJianJvEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function CaoMianJianJvEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CaoMianJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function CaoMianJianJvSlider_Callback(hObject, eventdata, handles)
% hObject    handle to CaoMianJianJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.CaoMianJianJvSlider,'Value');%获取实验中槽面间距滑动条的值
set(handles.CaoMianJianJvEdit,'String',num2str(var));%将滑动条的值(槽面间距)转换成字符串然后赋给对应文本框
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=var*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function CaoMianJianJvSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CaoMianJianJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function BoChangEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BoChangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BoChangEdit as text
%        str2double(get(hObject,'String')) returns contents of BoChangEdit as a double
var = str2double(get(handles.BoChangEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function BoChangEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function BoChangSlider_Callback(hObject, eventdata, handles)
% hObject    handle to BoChangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.BoChangSlider,'Value');%获取实验中波长滑动条的值
set(handles.BoChangEdit,'String',num2str(var));%将滑动条的值(波长)转换成字符串然后赋给对应文本框
lamda1=var*1e-9;%输入波长
a=(str2double(get(handles.CaoMianKuanEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function BoChangSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function CaoMianKuanEdit_Callback(hObject, eventdata, handles)
% hObject    handle to CaoMianKuanEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CaoMianKuanEdit as text
%        str2double(get(hObject,'String')) returns contents of CaoMianKuanEdit as a double
var = str2double(get(handles.CaoMianKuanEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function CaoMianKuanEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CaoMianKuanEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function CaoMianKuanSlider_Callback(hObject, eventdata, handles)
% hObject    handle to CaoMianKuanSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.CaoMianKuanSlider,'Value');%获取实验中槽面宽度滑动条的值
set(handles.CaoMianKuanEdit,'String',num2str(var));%将滑动条的值(槽面宽度)转换成字符串然后赋给对应文本框
lamda1=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%输入波长
a=var*1e-6;%闪耀光栅（Blzed grating）槽面宽度
d=(str2double(get(handles.CaoMianJianJvEdit,'string')))*1e-6;%闪耀光栅（Blzed grating）槽面宽度槽面的间距
i_N=str2double(get(handles.RuShejiaoEdit,'string'));%入射角（与光栅平面法线N的夹角）
i_rad=i_N*pi/180;%入射角（与光栅平面法线N的夹角）
gama=str2double(get(handles.ShanYaoJiaoEdit,'string'));%闪耀角
gama_rad=gama*pi/180;%闪耀角
N=str2double(get(handles.CaoMianShuEdit,'string'));%闪耀光栅（Blzed grating）的槽面个数
I0=1;%单个槽面光强
theta_max=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1;%波数
alpha=1/2.*k.*a.*sin(x)+1/2.*k.*a.*sin(i_rad)-k.*a.*sin(gama_rad);%
deta=k.*d.*(sin(i_rad)+sin(x));%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%闪耀光栅（Blzed grating）衍射光强
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(theta,I(size(y,1)/2,:));legend('衍射光强分布曲线');%闪耀光栅（Blzed grating）衍射总体情况中间剖线
xlabel('x方向坐标(度)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(I(:))])%闪耀光栅（Blzed grating）衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function CaoMianKuanSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CaoMianKuanSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in BaoCunPushbutton.
function BaoCunPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to BaoCunPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uiputfile({'*.jpg';'*.png';'*.bmp';'*.*'});%打开文件
if isequal(file ,0) || isequal(path,0)%判断是否选择了文件
    errordlg('没有保存文件，请您重新操作','警告');%没选择文件，则报错
    return;
end
set(gcf,'PaperPositionMode','auto');%将图窗的 PaperPositionMode 属性设置为 'auto' 以使其保存为屏幕上显示的大小
print(fullfile(path,file),'-dpng','-r0');%使用 '-r0' 可按屏幕分辨率保存


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles2= ShanYaoGuanShanYanSheYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_7_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function LK1Untitled_Callback(hObject, eventdata, handles)
% hObject    handle to LK1Untitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'LineWidth',1);%红色
end

% --------------------------------------------------------------------
function LK2Untitled_Callback(hObject, eventdata, handles)
% hObject    handle to LK2Untitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'LineWidth',2);%红色
end

% --------------------------------------------------------------------
function LK3Untitled_Callback(hObject, eventdata, handles)
% hObject    handle to LK3Untitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'LineWidth',3);%红色
end

% --------------------------------------------------------------------
function RedUntitled_Callback(hObject, eventdata, handles)
% hObject    handle to RedUntitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'color','r');%红色
end

% --------------------------------------------------------------------
function GreenUntitled_Callback(hObject, eventdata, handles)
% hObject    handle to GreenUntitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'color','g');%红色
end

% --------------------------------------------------------------------
function BlueUntitled_Callback(hObject, eventdata, handles)
% hObject    handle to BlueUntitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'color','b');%红色
end

% --------------------------------------------------------------------
function LINE_Callback(hObject, eventdata, handles)
% hObject    handle to LINE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
