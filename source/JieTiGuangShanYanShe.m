function varargout = JieTiGuangShanYanShe(varargin)
% JIETIGUANGSHANYANSHE MATLAB code for JieTiGuangShanYanShe.fig
%      JIETIGUANGSHANYANSHE, by itself, creates a new JIETIGUANGSHANYANSHE or raises the existing
%      singleton*.
%
%      H = JIETIGUANGSHANYANSHE returns the handle to a new JIETIGUANGSHANYANSHE or the handle to
%      the existing singleton*.
%
%      JIETIGUANGSHANYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JIETIGUANGSHANYANSHE.M with the given input arguments.
%
%      JIETIGUANGSHANYANSHE('Property','Value',...) creates a new JIETIGUANGSHANYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before JieTiGuangShanYanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to JieTiGuangShanYanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help JieTiGuangShanYanShe

% Last Modified by GUIDE v2.5 15-Mar-2024 22:58:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @JieTiGuangShanYanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @JieTiGuangShanYanShe_OutputFcn, ...
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


% --- Executes just before JieTiGuangShanYanShe is made visible.
function JieTiGuangShanYanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to JieTiGuangShanYanShe (see VARARGIN)

% Choose default command line output for JieTiGuangShanYanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('阶梯光栅原理图.JPG');%显示原理图
axes(handles.axes2);axis on;
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BCHEdit,'enable','off');%设置控件为灰色
set(handles.BCHSlider,'enable','off');
set(handles.ZHSHLEdit,'enable','off');
set(handles.ZHSHLSlider,'enable','off');
set(handles.HDEdit,'enable','off');
set(handles.HDSlider,'enable','off');
set(handles.GDEdit,'enable','off');
set(handles.GDSlider,'enable','off');
set(handles.JTSHEdit,'enable','off');
set(handles.JTSHSlider,'enable','off');
set(handles.YSHJEdit,'enable','off');
set(handles.YSHJSlider,'enable','off');
set(handles.QKPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes JieTiGuangShanYanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = JieTiGuangShanYanShe_OutputFcn(hObject, eventdata, handles) 
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



function GDEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GDEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GDEdit as text
%        str2double(get(hObject,'String')) returns contents of GDEdit as a double
var = str2double(get(handles.GDEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GDEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GDEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GDSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GDSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GDSlider,'Value');%获取阶梯的高度滑动条的值
set(handles.GDEdit,'String',num2str(var));%将滑动条的值(阶梯的高度)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
   lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=var^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况 
else
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=var^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function GDSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GDSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in TSHPushbutton.
function TSHPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to TSHPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BCHEdit,'enable','on');%设置控件为灰色
set(handles.BCHSlider,'enable','on');
set(handles.ZHSHLEdit,'enable','on');
set(handles.ZHSHLSlider,'enable','on');
set(handles.HDEdit,'enable','on');
set(handles.HDSlider,'enable','on');
set(handles.GDEdit,'enable','on');
set(handles.GDSlider,'enable','on');
set(handles.JTSHEdit,'enable','on');
set(handles.JTSHSlider,'enable','on');
set(handles.YSHJEdit,'enable','on');
set(handles.YSHJSlider,'enable','on');
set(handles.QKPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    %仿真透射式阶梯光栅衍射
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes on button press in FSHSPushbutton.
function FSHSPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FSHSPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%仿真反射式阶梯光栅衍射
lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
a=d;
N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
I0=1;%光强
theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
theta=linspace(-theta_max,theta_max,1024);%衍射角
[x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
k=2*pi/lamda1/n;%波数
alpha=1/2.*k.*a.*sin(x);
deta=k.*(2.*t-sin(x).*d);%相位差
I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
axes(handles.axes2);axis on;%调用坐标
TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
axes(handles.axes3);%调用坐标
imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes on button press in QKPushbutton.
function QKPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QKPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
xlabel('');ylabel('');legend('off');
axis off;
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域


function YSHJEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YSHJEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YSHJEdit as text
%        str2double(get(hObject,'String')) returns contents of YSHJEdit as a double
var = str2double(get(handles.YSHJEdit,'string'));
if((var<(-90)) || (var>90))
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function YSHJEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YSHJEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function YSHJSlider_Callback(hObject, eventdata, handles)
% hObject    handle to YSHJSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.YSHJSlider,'Value');%获取最大衍射角滑动条的值
set(handles.YSHJEdit,'String',num2str(var));%将滑动条的值(最大衍射角)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=var;%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况
else
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=var;%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function YSHJSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YSHJSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function JTSHEdit_Callback(hObject, eventdata, handles)
% hObject    handle to JTSHEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JTSHEdit as text
%        str2double(get(hObject,'String')) returns contents of JTSHEdit as a double
var = str2double(get(handles.JTSHEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function JTSHEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JTSHEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function JTSHSlider_Callback(hObject, eventdata, handles)
% hObject    handle to JTSHSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.JTSHSlider,'Value');%获取阶梯光栅衍射阶梯数滑动条的值
set(handles.JTSHEdit,'String',num2str(var));%将滑动条的值(阶梯光栅衍射阶梯数)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=var;%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况
else
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=var;%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function JTSHSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JTSHSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function HDEdit_Callback(hObject, eventdata, handles)
% hObject    handle to HDEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HDEdit as text
%        str2double(get(hObject,'String')) returns contents of HDEdit as a double
var = str2double(get(handles.HDEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function HDEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HDEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function HDSlider_Callback(hObject, eventdata, handles)
% hObject    handle to HDSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.HDSlider,'Value');%获取玻璃的厚度滑动条的值
set(handles.HDEdit,'String',num2str(var));%将滑动条的值(玻璃的厚度)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=var;%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况
else
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=var;%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function HDSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HDSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function ZHSHLEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ZHSHLEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZHSHLEdit as text
%        str2double(get(hObject,'String')) returns contents of ZHSHLEdit as a double
var = str2double(get(handles.ZHSHLEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function ZHSHLEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZHSHLEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ZHSHLSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ZHSHLSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.ZHSHLSlider,'Value');%获取玻璃折射率滑动条的值
set(handles.ZHSHLEdit,'String',num2str(var));%将滑动条的值(玻璃折射率)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=var;%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况
else
    lamda1=(str2double(get(handles.BCHEdit,'string')))*1e-9;%输入波长
    n=var;%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ZHSHLSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZHSHLSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function BCHEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BCHEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BCHEdit as text
%        str2double(get(hObject,'String')) returns contents of BCHEdit as a double
var = str2double(get(handles.BCHEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function BCHEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BCHEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function BCHSlider_Callback(hObject, eventdata, handles)
% hObject    handle to BCHSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.BCHSlider,'Value');%获取波长滑动条的值
set(handles.BCHEdit,'String',num2str(var));%将滑动条的值(波长)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    lamda1=var*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*((n-1).*t+sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%透射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%透射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%透射式阶梯光栅衍射总体情况
else
    lamda1=var*1e-9;%输入波长
    n=str2double(get(handles.ZHSHLEdit,'string'));%玻璃折射率
    t=str2double(get(handles.HDEdit,'string'));%玻璃的厚度
    d=(str2double(get(handles.GDEdit,'string')))^(-3);%阶梯的高度
    a=d;
    N=str2double(get(handles.JTSHEdit,'string'));%阶梯光栅衍射阶梯数
    I0=1;%光强
    theta_max=str2double(get(handles.YSHJEdit,'string'));%最大衍射角
    theta=linspace(-theta_max,theta_max,1024);%衍射角
    [x,y]=meshgrid(theta.*pi./180,1:1:300);%坐标
    k=2*pi/lamda1/n;%波数
    alpha=1/2.*k.*a.*sin(x);
    deta=k.*(2.*t-sin(x).*d);%相位差
    I=I0.*(sin(alpha)./alpha).^2.*(sin(deta.*N./2)./sin(deta./2)).^2;%反射式阶梯光栅衍射光强
    axes(handles.axes2);axis on;%调用坐标
    TXJB = plot(theta,I(size(y,1),:));legend('光强分布曲线');%反射式阶梯光栅衍射总体情况中间剖线
    xlabel('x方向坐标(rad)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(I(:))])%反射式阶梯光栅衍射总体情况
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function BCHSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BCHSlider (see GCBO)
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
handles2= JieTiGuangShanYanSheYuanLi;%取得相应的界面对象
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
