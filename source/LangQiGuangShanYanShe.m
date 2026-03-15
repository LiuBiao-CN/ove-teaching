function varargout = LangQiGuangShanYanShe(varargin)
% LANGQIGUANGSHANYANSHE MATLAB code for LangQiGuangShanYanShe.fig
%      LANGQIGUANGSHANYANSHE, by itself, creates a new LANGQIGUANGSHANYANSHE or raises the existing
%      singleton*.
%
%      H = LANGQIGUANGSHANYANSHE returns the handle to a new LANGQIGUANGSHANYANSHE or the handle to
%      the existing singleton*.
%
%      LANGQIGUANGSHANYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LANGQIGUANGSHANYANSHE.M with the given input arguments.
%
%      LANGQIGUANGSHANYANSHE('Property','Value',...) creates a new LANGQIGUANGSHANYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LangQiGuangShanYanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LangQiGuangShanYanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LangQiGuangShanYanShe

% Last Modified by GUIDE v2.5 15-Mar-2024 22:21:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LangQiGuangShanYanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @LangQiGuangShanYanShe_OutputFcn, ...
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


% --- Executes just before LangQiGuangShanYanShe is made visible.
function LangQiGuangShanYanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LangQiGuangShanYanShe (see VARARGIN)

% Choose default command line output for LangQiGuangShanYanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('朗奇(黑白)光栅衍射原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BoChangYIEdit,'enable','off');%设置控件为灰色
set(handles.BoChangYiSlider,'enable','off');
set(handles.FengKuanEdit,'enable','off');
set(handles.FengKuanSlider,'enable','off');
set(handles.GuangShanChangShuEdit,'enable','off');
set(handles.GuangShanChangShuSlider,'enable','off');
set(handles.JiCiEdit,'enable','off');
set(handles.JiCiSlider,'enable','off');
set(handles.BoChangErEdit,'enable','off');
set(handles.BoChangErSlider,'enable','off');
set(handles.FengShuEdit,'enable','off');
set(handles.FengShuSlider,'enable','off');
set(handles.YanSheJiaoEdit,'enable','off');
set(handles.YanSheJiaoSlider,'enable','off');
set(handles.FenBianLiEdit,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LangQiGuangShanYanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LangQiGuangShanYanShe_OutputFcn(hObject, eventdata, handles) 
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



function FenBianLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FenBianLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FenBianLiEdit as text
%        str2double(get(hObject,'String')) returns contents of FenBianLiEdit as a double


% --- Executes during object creation, after setting all properties.
function FenBianLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FenBianLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in YuanShePushbutton.
function YuanShePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to YuanShePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangYIEdit,'enable','on');%设置控件为灰色
set(handles.BoChangYiSlider,'enable','on');
set(handles.FengKuanEdit,'enable','on');
set(handles.FengKuanSlider,'enable','on');
set(handles.GuangShanChangShuEdit,'enable','on');
set(handles.GuangShanChangShuSlider,'enable','on');
set(handles.FengShuEdit,'enable','on');
set(handles.FengShuSlider,'enable','on');
set(handles.YanSheJiaoEdit,'enable','on');
set(handles.YanSheJiaoSlider,'enable','on');
set(handles.QingKongPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    if(get(handles.JiCiEdit,'string') == '无')
        set(handles.JiCiEdit,'string','2');
    end
    if(get(handles.BoChangErEdit,'string') == '无')
        set(handles.BoChangErEdit,'string','632.8');
    end 
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes on button press in FenBianLiPushbutton.
function FenBianLiPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FenBianLiPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
A=m*N;%分辨本领
I0=1;%单缝
theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k1=2*pi/lamda1;%波数
k2=2*pi/lamda2;%波数
alpha1=1/2.*k1.*a.*sin(x);%
alpha2=1/2.*k2.*a.*sin(x);%
deta1=k1.*d.*sin(x);%
deta2=k2.*d.*sin(x);%
I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
I=I1+I2;%两干涉光强相加
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[0,max(max(I))/10])
set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
handles.TXJB = TXJB;
guidata(hObject, handles);
% figure,subplot(3,3,1)
% imshow(I1,[0,max(I1(:))/10])
% title('干涉光强分布I1')
% subplot(3,3,2)
% imshow(I2,[0,max(I2(:))/10])
% title('干涉光强分布I2')
% subplot(3,3,3)
% imshow(I,[0,max(max(I))/10])
% title('两干涉光强相加')
% subplot(3,3,4)
% plot(theta,I1(size(y,1)./2,:))
% title('干涉光强分布I1的剖线')
% subplot(3,3,5)
% plot(theta,I2(size(y,1)./2,:))
% title('干涉光强分布I2的剖线')
% subplot(3,3,6)
% plot(theta,I(size(y,1)./2,:))
% title('干涉光强分布I的剖线')
% subplot(3,3,[7,8,9])
% plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g')
% title('干涉光强分5布I1,I2的剖线')


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


function YanSheJiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YanSheJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YanSheJiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of YanSheJiaoEdit as a double
var = str2double(get(handles.YanSheJiaoEdit,'string'));
if((var<(-90)) || (var>90))
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

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
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function YanSheJiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YanSheJiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function FengShuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FengShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FengShuEdit as text
%        str2double(get(hObject,'String')) returns contents of FengShuEdit as a double
var = str2double(get(handles.FengShuEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function FengShuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function FengShuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to FengShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.FengShuSlider,'Value');%获取实验中通光缝数滑动条的值
set(handles.FengShuEdit,'String',num2str(var));%将滑动条的值(通光缝数)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function FengShuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function BoChangErEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BoChangErEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BoChangErEdit as text
%        str2double(get(hObject,'String')) returns contents of BoChangErEdit as a double
var = str2double(get(handles.BoChangErEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function BoChangErEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangErEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function BoChangErSlider_Callback(hObject, eventdata, handles)
% hObject    handle to BoChangErSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.BoChangErSlider,'Value');%获取实验中波长2滑动条的值
set(handles.BoChangErEdit,'String',num2str(var));%将滑动条的值(波长2)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function BoChangErSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangErSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function JiCiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to JiCiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JiCiEdit as text
%        str2double(get(hObject,'String')) returns contents of JiCiEdit as a double


% --- Executes during object creation, after setting all properties.
function JiCiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiCiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function JiCiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to JiCiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=floor(get(handles.JiCiSlider,'Value'));%获取实验中衍射级次滑动条的值
set(handles.JiCiEdit,'String',num2str(var));%将滑动条的值(衍射级次)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function JiCiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiCiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function GuangShanChangShuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuangShanChangShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuangShanChangShuEdit as text
%        str2double(get(hObject,'String')) returns contents of GuangShanChangShuEdit as a double
var = str2double(get(handles.GuangShanChangShuEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GuangShanChangShuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuangShanChangShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GuangShanChangShuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GuangShanChangShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GuangShanChangShuSlider,'Value');%获取实验中光栅常数滑动条的值
set(handles.GuangShanChangShuEdit,'String',num2str(var));%将滑动条的值(光栅常数)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function GuangShanChangShuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuangShanChangShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function FengKuanEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FengKuanEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FengKuanEdit as text
%        str2double(get(hObject,'String')) returns contents of FengKuanEdit as a double
var = str2double(get(handles.FengKuanEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function FengKuanEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengKuanEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function FengKuanSlider_Callback(hObject, eventdata, handles)
% hObject    handle to FengKuanSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.FengKuanSlider,'Value');
set(handles.FengKuanEdit,'String',num2str(var));
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function FengKuanSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengKuanSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function BoChangYIEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BoChangYIEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BoChangYIEdit as text
%        str2double(get(hObject,'String')) returns contents of BoChangYIEdit as a double
var = str2double(get(handles.BoChangYIEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function BoChangYIEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangYIEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function BoChangYiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to BoChangYiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.BoChangYiSlider,'Value');%获取实验中波长1滑动条的值
set(handles.BoChangYIEdit,'String',num2str(var));%将滑动条的值(波长1)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiCiEdit,'enable','off');
    set(handles.JiCiSlider,'enable','off');
    set(handles.BoChangErEdit,'enable','off');
    set(handles.BoChangErSlider,'enable','off');
    set(handles.JiCiEdit,'string','无');
    set(handles.BoChangErEdit,'string','无');
    set(handles.FenBianLiEdit,'string',' ');%显示分辨本领
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(theta,I1(size(y,1)./2,:));legend('光强分布曲线');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))/10])
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    set(handles.JiCiEdit,'enable','on');
    set(handles.JiCiSlider,'enable','on');
    set(handles.BoChangErEdit,'enable','on');
    set(handles.BoChangErSlider,'enable','on');
    lamda1=(str2double(get(handles.BoChangYIEdit,'string')))*1e-9;%输入波长1
    lamda2=(str2double(get(handles.BoChangErEdit,'string')))*1e-9;%输入波长2
    a=str2double(get(handles.FengKuanEdit,'string'))*10^(-6);%缝宽
    d=str2double(get(handles.GuangShanChangShuEdit,'string'))*10^(-6);%光栅常数
    m=str2double(get(handles.JiCiEdit,'string'));%干涉级次
    N=str2double(get(handles.FengShuEdit,'string'));%通光缝数
    A=m*N;%分辨本领
    I0=1;%单缝
    theta_YanShe=str2double(get(handles.YanSheJiaoEdit,'string'));%最大衍射角
    theta=linspace(-(theta_YanShe),theta_YanShe,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k1=2*pi/lamda1;%波数
    k2=2*pi/lamda2;%波数
    alpha1=1/2.*k1.*a.*sin(x);%
    alpha2=1/2.*k2.*a.*sin(x);%
    deta1=k1.*d.*sin(x);%
    deta2=k2.*d.*sin(x);%
    I1=I0.*(sin(alpha1)./alpha1).^2.*(sin(deta1.*N./2)./sin(deta1./2)).^2;%干涉光强
    I2=I0.*(sin(alpha2)./alpha2).^2.*(sin(deta2.*N./2)./sin(deta2./2)).^2;%干涉光强
    I=I1+I2;%两干涉光强相加
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB =  plot(theta,I1(size(y,1)./2,:),'r',theta,I2(size(y,1)./2,:),'g',theta,I(size(y,1)./2,:),'b');
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('波长一光强分布曲线','波长二光强分布曲线','两波长叠加后的光强分布曲线');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))/10])
    set(handles.FenBianLiEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function BoChangYiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangYiSlider (see GCBO)
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
handles2= LangQiGuangShanYanSheYuanLi;%取得相应的界面对象
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


% --- Executes on selection change in XZPopupmenu.
function XZPopupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to XZPopupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns XZPopupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from XZPopupmenu
var1=get(handles.XZPopupmenu,'Value');%获取下拉菜单的值
handles.var1 = var1;
guidata(hObject, handles)%函数之间传递参数

% --- Executes during object creation, after setting all properties.
function XZPopupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XZPopupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
