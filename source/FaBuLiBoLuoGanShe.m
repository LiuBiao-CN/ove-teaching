function varargout = FaBuLiBoLuoGanShe(varargin)
% FABULIBOLUOGANSHE MATLAB code for FaBuLiBoLuoGanShe.fig
%      FABULIBOLUOGANSHE, by itself, creates a new FABULIBOLUOGANSHE or raises the existing
%      singleton*.
%
%      H = FABULIBOLUOGANSHE returns the handle to a new FABULIBOLUOGANSHE or the handle to
%      the existing singleton*.
%
%      FABULIBOLUOGANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FABULIBOLUOGANSHE.M with the given input arguments.
%
%      FABULIBOLUOGANSHE('Property','Value',...) creates a new FABULIBOLUOGANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FaBuLiBoLuoGanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FaBuLiBoLuoGanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaBuLiBoLuoGanShe

% Last Modified by GUIDE v2.5 16-Mar-2024 09:12:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaBuLiBoLuoGanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @FaBuLiBoLuoGanShe_OutputFcn, ...
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


% --- Executes just before FaBuLiBoLuoGanShe is made visible.
function FaBuLiBoLuoGanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FaBuLiBoLuoGanShe (see VARARGIN)

% Choose default command line output for FaBuLiBoLuoGanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('法布里-珀罗干涉原理图.JPG');%显示原理图
axes(handles.axes2);axis on;
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.FanSheBiEdit,'enable','off');%设置控件为灰色
set(handles.FanSheBiSlider,'enable','off');
set(handles.PinBanJianJvEdit,'enable','off');
set(handles.PinBanJianJvSlider,'enable','off');
set(handles.JiaoJvEdit,'enable','off');
set(handles.JiaoJvSlider,'enable','off');
set(handles.FenBianBengLingEdit,'enable','off');
set(handles.BOChangYiEdit,'enable','off');
set(handles.BOChangYiSlider,'enable','off');
set(handles.GuanChaMIanChuCunEdit,'enable','off');
set(handles.GuanChaMIanChuCunSlider,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaBuLiBoLuoGanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaBuLiBoLuoGanShe_OutputFcn(hObject, eventdata, handles) 
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
handles2= DengQingGanShe;%取得光学仿真等倾干涉界面对象
handles2=guihandles(handles2);%跳转到光学仿真等倾干涉界面


% --- Executes on button press in FaBuliBuoLuoPushbutton.
function FaBuliBuoLuoPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FaBuliBuoLuoPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.FanSheBiEdit,'enable','on');%设置控件为灰色
set(handles.FanSheBiSlider,'enable','on');
set(handles.PinBanJianJvEdit,'enable','on');
set(handles.PinBanJianJvSlider,'enable','on');
set(handles.JiaoJvEdit,'enable','on');
set(handles.JiaoJvSlider,'enable','on');
set(handles.BOChangYiEdit,'enable','on');
set(handles.BOChangYiSlider,'enable','on');
set(handles.GuanChaMIanChuCunEdit,'enable','on');
set(handles.GuanChaMIanChuCunSlider,'enable','on');
set(handles.QingKongPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
    handles.TXJB = TXJB;
    guidata(hObject, handles);
else
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(x(N/2,:),I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
    handles.TXJB = TXJB;
    guidata(hObject, handles);
end

% --- Executes on button press in FenBIanBengLingPushbutton.
function FenBIanBengLingPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FenBIanBengLingPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
N=512;%采样数
F=4*ruo/(1-ruo)^2;%精细度系数
L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
x=linspace(-L/2,L/2,N);
y=x;       %焦平面坐标
[x,y]=meshgrid(x,y);
r=sqrt(x.^2+y.^2);%焦平面上的半径
thita=atan(r./f);%出射光夹角θ
lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
%imshow(I1,[])
m=2*h/lamda1;%亮纹可能的最大级次
s=pi*sqrt(ruo)/(1-ruo);%精细度
A=0.97*s*m;%分辨本领
dlamda=lamda1/A;%可以分辨的最小波长差
lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
%imshow(I2,[])
I=I1+I2;%计算干涉光强之和
axes(handles.axes2);axis on;%调用干涉图样坐标
TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
hold on
plot(x(N/2,:),I2(N/2,:),'g')
hold on
plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
axes(handles.axes3);%调用干涉图样坐标
imshow(I,[])
set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
handles.TXJB = TXJB;
guidata(hObject, handles);

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

function BOChangErEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BOChangErEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BOChangErEdit as text
%        str2double(get(hObject,'String')) returns contents of BOChangErEdit as a double
var = str2double(get(handles.BOChangErEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function BOChangErEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BOChangErEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function BOChangErSlider_Callback(hObject, eventdata, handles)
% hObject    handle to BOChangErSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.BOChangErSlider,'Value');%获取实验中第二种入射波长滑动条的值
set(handles.BOChangErEdit,'String',num2str(var));%将滑动条的值(第二种入射波长)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    axis on;
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g');
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
else
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    axis on;
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(x(N/2,:),I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function BOChangErSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BOChangErSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function BOChangYiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to BOChangYiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BOChangYiEdit as text
%        str2double(get(hObject,'String')) returns contents of BOChangYiEdit as a double
var = str2double(get(handles.BOChangYiEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function BOChangYiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BOChangYiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function BOChangYiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to BOChangYiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.BOChangYiSlider,'Value');%获取实验中第一种入射波长滑动条的值
set(handles.BOChangYiEdit,'String',num2str(var));%将滑动条的值(第一种入射波长)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    axis on;
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
else
    

    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(x(N/2,:),I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function BOChangYiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BOChangYiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function GuanChaMIanChuCunEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMIanChuCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuanChaMIanChuCunEdit as text
%        str2double(get(hObject,'String')) returns contents of GuanChaMIanChuCunEdit as a double
var = str2double(get(handles.GuanChaMIanChuCunEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GuanChaMIanChuCunEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMIanChuCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GuanChaMIanChuCunSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMIanChuCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GuanChaMIanChuCunSlider,'Value');%获取实验中观察面尺寸滑动条的值
set(handles.GuanChaMIanChuCunEdit,'String',num2str(var));%将滑动条的值(观察面尺寸)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
else
    

    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(x(N/2,:),I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function GuanChaMIanChuCunSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMIanChuCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function JiaoJvEdit_Callback(hObject, eventdata, handles)
% hObject    handle to JiaoJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JiaoJvEdit as text
%        str2double(get(hObject,'String')) returns contents of JiaoJvEdit as a double
var = str2double(get(handles.JiaoJvEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function JiaoJvEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiaoJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function JiaoJvSlider_Callback(hObject, eventdata, handles)
% hObject    handle to JiaoJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.JiaoJvSlider,'Value');%获取实验中透镜L的焦距滑动条的值
set(handles.JiaoJvEdit,'String',num2str(var));%将滑动条的值(透镜L的焦距)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
else
    

    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function JiaoJvSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiaoJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function PinBanJianJvEdit_Callback(hObject, eventdata, handles)
% hObject    handle to PinBanJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PinBanJianJvEdit as text
%        str2double(get(hObject,'String')) returns contents of PinBanJianJvEdit as a double
var = str2double(get(handles.PinBanJianJvEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function PinBanJianJvEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PinBanJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function PinBanJianJvSlider_Callback(hObject, eventdata, handles)
% hObject    handle to PinBanJianJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.PinBanJianJvSlider,'Value');%获取实验中平板间距滑动条的值
set(handles.PinBanJianJvEdit,'String',num2str(var));%将滑动条的值(平板间距)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
else


    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(x(N/2,:),I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function PinBanJianJvSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PinBanJianJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function FanSheBiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FanSheBiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FanSheBiEdit as text
%        str2double(get(hObject,'String')) returns contents of FanSheBiEdit as a double
var = str2double(get(handles.FanSheBiEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function FanSheBiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FanSheBiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function FanSheBiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to FanSheBiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.FanSheBiSlider,'Value');%获取实验中反射比滑动条的值
set(handles.FanSheBiEdit,'String',num2str(var));%将滑动条的值(反射比)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.FenBianBengLingEdit,'string',' ');
    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);y=x;%焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;%红光的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);%透射光干涉后的光强
    %imshow(I1,[])
    lamda2=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%绿光入射波长(米)
    delt2=4*pi*h*cos(thita)/lamda2;%绿光的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    II=zeros(N,N,3); %预设彩色表示的干涉光强
    II(:,:,1)=I1;%赋值红色层
    II(:,:,2)=I2;%赋值绿色层
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    %plot(x(N/2,:),I2(N/2,:),'g')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强')
    axes(handles.axes3);%调用干涉图样坐标
    imshow(II)
else
    

    ruo=str2double(get(handles.FanSheBiEdit,'string'));%反射比
    h=str2double(get(handles.PinBanJianJvEdit,'string'));%平板间距(米)
    f=str2double(get(handles.JiaoJvEdit,'string'));%焦距(米)
    N=512;%采样数
    F=4*ruo/(1-ruo)^2;%精细度系数
    L=str2double(get(handles.GuanChaMIanChuCunEdit,'string'));%观察面（焦平面）尺寸（米）
    x=linspace(-L/2,L/2,N);
    y=x;       %焦平面坐标
    [x,y]=meshgrid(x,y);
    r=sqrt(x.^2+y.^2);%焦平面上的半径
    thita=atan(r./f);%出射光夹角θ
    lamda1=(str2double(get(handles.BOChangYiEdit,'string')))*1e-9;%红光入射波长(米)
    delt1=4*pi*h*cos(thita)/lamda1;   %光1的光程差δ1
    I1=1./(1+F*(sin(delt1/2)).^2);    %透射光干涉后的光强
    %imshow(I1,[])
    m=2*h/lamda1;%亮纹可能的最大级次
    s=pi*sqrt(ruo)/(1-ruo);%精细度
    A=0.97*s*m;%分辨本领
    dlamda=lamda1/A;%可以分辨的最小波长差
    lamda2=lamda1-dlamda;%入射波长2（可以分辨的最小波长）
    delt2=4*pi*h*cos(thita)/lamda2;%光2的光程差δ2
    I2=1./(1+F*(sin(delt2/2)).^2);%透射光干涉后的光强
    %imshow(I2,[])
    I=I1+I2;%计算干涉光强之和
    cla(handles.axes2);%清空图形区域
    axes(handles.axes2);axis on;%调用干涉图样坐标
    TXJB = plot(x(N/2,:),I1(N/2,:),'r');%绘制剖线
    hold on
    plot(x(N/2,:),I2(N/2,:),'g')
    hold on
    plot(x(N/2,:),I1(N/2,:)+I2(N/2,:),'b')
    xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
    legend('光波1干涉后的光强','光波2干涉后的光强','两光波叠加后的光强');
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[])
    set(handles.FenBianBengLingEdit,'string',num2str(A));%显示分辨本领
end
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function FanSheBiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FanSheBiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function FenBianBengLingEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FenBianBengLingEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FenBianBengLingEdit as text
%        str2double(get(hObject,'String')) returns contents of FenBianBengLingEdit as a double


% --- Executes during object creation, after setting all properties.
function FenBianBengLingEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FenBianBengLingEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
handles2= FaBuLiBoLuoGanSheYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
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
