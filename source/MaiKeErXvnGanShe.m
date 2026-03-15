function varargout = MaiKeErXvnGanShe(varargin)
% MAIKEERXVNGANSHE MATLAB code for MaiKeErXvnGanShe.fig
%      MAIKEERXVNGANSHE, by itself, creates a new MAIKEERXVNGANSHE or raises the existing
%      singleton*.
%
%      H = MAIKEERXVNGANSHE returns the handle to a new MAIKEERXVNGANSHE or the handle to
%      the existing singleton*.
%
%      MAIKEERXVNGANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIKEERXVNGANSHE.M with the given input arguments.
%
%      MAIKEERXVNGANSHE('Property','Value',...) creates a new MAIKEERXVNGANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MaiKeErXvnGanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MaiKeErXvnGanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MaiKeErXvnGanShe

% Last Modified by GUIDE v2.5 15-Mar-2024 21:42:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MaiKeErXvnGanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @MaiKeErXvnGanShe_OutputFcn, ...
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


% --- Executes just before MaiKeErXvnGanShe is made visible.
function MaiKeErXvnGanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MaiKeErXvnGanShe (see VARARGIN)

% Choose default command line output for MaiKeErXvnGanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('迈克耳逊干涉原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.YvDongFanSheJingEdit,'enable','off');
set(handles.YvDongFanSheJingSlider,'enable','off');
set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
set(handles.JiaoJvEdit,'enable','off');
set(handles.JiaoJvSlider,'enable','off');
set(handles.ZheSheLiEdit,'enable','off');
set(handles.ZheSheLiSlider,'enable','off');
set(handles.XvPinBanHouDuEdit,'enable','off');
set(handles.XvPinBanHouDuSlider,'enable','off');
set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
set(handles.GuanChaMianChuCunEdit,'enable','off');
set(handles.GuanChaMianChuCunSlider,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MaiKeErXvnGanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MaiKeErXvnGanShe_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in FeiDingYiGanShePushbutton.
function FeiDingYiGanShePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FeiDingYiGanShePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.JiaoJvEdit,'enable','on');
set(handles.JiaoJvSlider,'enable','on');
set(handles.ZheSheLiEdit,'enable','on');
set(handles.ZheSheLiSlider,'enable','on');
set(handles.XvPinBanHouDuEdit,'enable','on');
set(handles.XvPinBanHouDuSlider,'enable','on');
set(handles.GuanChaMianChuCunEdit,'enable','on');
set(handles.GuanChaMianChuCunSlider,'enable','on');
set(handles.QingKongPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    if(get(handles.YvDongFanSheJingEdit,'string') == '无')
        set(handles.YvDongFanSheJingEdit,'string','0.05');
    end
    if(get(handles.DianGuanYuanJvOJvLiEdit,'string') == '无')
        set(handles.DianGuanYuanJvOJvLiEdit,'string','0.03');
    end
    if(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string') == '无')
        set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','0.01');
    end
    if(get(handles.DianGuanYuanXEdit,'string') == '无')
         set(handles.DianGuanYuanXEdit,'string','0');
    end
    if(get(handles.DianGuanYuanYEdit,'string') == '无')
        set(handles.DianGuanYuanYEdit,'string','0');
    end
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    if(get(handles.JiaoJvEdit,'string') == '无')
        set(handles.JiaoJvEdit,'string','0.07');
    end
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes on button press in DingYiGanShePushbutton.
function DingYiGanShePushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DingYiGanShePushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
z0=str2double(get(handles.DianGuanYuanZEdit,'string'));%点光源的坐标%点光源的坐标
om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
k=2.*pi./lamda_kuozhan/n;%波数
d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
om2=om1+d;%M2到O的距离
s22e=2*(om2+os)+dd;%S'2到E的距离
s11e=2*(om1+os)+dd;%S'1到E的距离
L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
N=512;%采样数
x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
data=2.*n.*d.*cos(theta);%光程差
I=0;%干涉光强
for nn=1:1:length(k)
    pha=k(nn).*data;%两干涉光之间的相位差
    I=I+(1+cos(pha));%干涉光强
end
axes(handles.axes2);%调用干涉图样坐标
imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强


% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域


function GuanChaMianChuCunEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChuCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuanChaMianChuCunEdit as text
%        str2double(get(hObject,'String')) returns contents of GuanChaMianChuCunEdit as a double
var = str2double(get(handles.GuanChaMianChuCunEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GuanChaMianChuCunEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChuCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GuanChaMianChuCunSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChuCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GuanChaMianChuCunSlider,'Value');%观察面尺寸(m)
set(handles.GuanChaMianChuCunEdit,'String',num2str(var));%将滑动条的值(观察面尺寸)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function GuanChaMianChuCunSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChuCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function JingXianGuanYuanJvGuanChaPingDeJvLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to JingXianGuanYuanJvGuanChaPingDeJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JingXianGuanYuanJvGuanChaPingDeJvLiEdit as text
%        str2double(get(hObject,'String')) returns contents of JingXianGuanYuanJvGuanChaPingDeJvLiEdit as a double
var = str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function JingXianGuanYuanJvGuanChaPingDeJvLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JingXianGuanYuanJvGuanChaPingDeJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function JingXianGuanYuanJvGuanChaPingDeJvLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to JingXianGuanYuanJvGuanChaPingDeJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'Value');%镜像光源距观察屏距离(m)
set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'String',num2str(var));%将滑动条的值(镜像光源距观察屏距离)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function JingXianGuanYuanJvGuanChaPingDeJvLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JingXianGuanYuanJvGuanChaPingDeJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function XvPinBanHouDuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to XvPinBanHouDuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XvPinBanHouDuEdit as text
%        str2double(get(hObject,'String')) returns contents of XvPinBanHouDuEdit as a double
var = str2double(get(handles.XvPinBanHouDuEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function XvPinBanHouDuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XvPinBanHouDuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function XvPinBanHouDuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to XvPinBanHouDuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.XvPinBanHouDuSlider,'Value');%虚平板的厚度(m)
set(handles.XvPinBanHouDuEdit,'String',num2str(var));%将滑动条的值(虚平板的厚度)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function XvPinBanHouDuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XvPinBanHouDuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function ZheSheLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ZheSheLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZheSheLiEdit as text
%        str2double(get(hObject,'String')) returns contents of ZheSheLiEdit as a double
var = str2double(get(handles.ZheSheLiEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function ZheSheLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZheSheLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ZheSheLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ZheSheLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.ZheSheLiSlider,'Value');%介质折射率
set(handles.ZheSheLiEdit,'String',num2str(var));%将滑动条的值(介质折射率)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function ZheSheLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZheSheLiSlider (see GCBO)
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
var=get(handles.JiaoJvSlider,'Value');%透镜L的焦距(m)
set(handles.JiaoJvEdit,'String',num2str(var));%将滑动条的值(透镜L的焦距)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end


% --- Executes during object creation, after setting all properties.
function JiaoJvSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiaoJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DianGuanYuanJvOJvLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanJvOJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuanYuanJvOJvLiEdit as text
%        str2double(get(hObject,'String')) returns contents of DianGuanYuanJvOJvLiEdit as a double
var = str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function DianGuanYuanJvOJvLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanJvOJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function DianGuanYuanJvOJvLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanJvOJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.DianGuanYuanJvOJvLiSlider,'Value');%S、S'到O的距离
set(handles.DianGuanYuanJvOJvLiEdit,'String',num2str(var));%将滑动条的值(S、S'到O的距离)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function DianGuanYuanJvOJvLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanJvOJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function YvDongFanSheJingEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YvDongFanSheJingEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YvDongFanSheJingEdit as text
%        str2double(get(hObject,'String')) returns contents of YvDongFanSheJingEdit as a double
var = str2double(get(handles.YvDongFanSheJingEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function YvDongFanSheJingEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YvDongFanSheJingEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function YvDongFanSheJingSlider_Callback(hObject, eventdata, handles)
% hObject    handle to YvDongFanSheJingSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.YvDongFanSheJingSlider,'Value');%M1到O的距离
set(handles.YvDongFanSheJingEdit,'String',num2str(var));%将滑动条的值(M1到O的距离)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function YvDongFanSheJingSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YvDongFanSheJingSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DianGuanYuanXEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanXEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuanYuanXEdit as text
%        str2double(get(hObject,'String')) returns contents of DianGuanYuanXEdit as a double


% --- Executes during object creation, after setting all properties.
function DianGuanYuanXEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanXEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuanYuanYEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuanYuanYEdit as text
%        str2double(get(hObject,'String')) returns contents of DianGuanYuanYEdit as a double


% --- Executes during object creation, after setting all properties.
function DianGuanYuanYEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuanYuanZEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanZEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuanYuanZEdit as text
%        str2double(get(hObject,'String')) returns contents of DianGuanYuanZEdit as a double


% --- Executes during object creation, after setting all properties.
function DianGuanYuanZEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuanYuanZEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.JiaoJvEdit,'enable','off');
    set(handles.JiaoJvSlider,'enable','off');
    set(handles.JiaoJvEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'enable','on');
    set(handles.DianGuanYuanYEdit,'enable','on');
    set(handles.YvDongFanSheJingEdit,'enable','on');
    set(handles.YvDongFanSheJingSlider,'enable','on');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','on');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','on');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','on');
    
    
    
    
    
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    x0=str2double(get(handles.DianGuanYuanXEdit,'string'));
    y0=str2double(get(handles.DianGuanYuanYEdit,'string'));
    om1=str2double(get(handles.YvDongFanSheJingEdit,'string'));%M1到O的距离
    os=str2double(get(handles.DianGuanYuanJvOJvLiEdit,'string'));%S、S'到O的距离
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2*pi/lamda/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    dd=str2double(get(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string'));%S'到E的距离
    om2=om1+d;%M2到O的距离
    s22e=2*(om2+os)+dd;%S'2到E的距离
    s11e=2*(om1+os)+dd;%S'1到E的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    u1=exp(1i.*k.*s11e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s11e);%发散球面光波1
    u2=exp(1i.*k.*s22e).*exp(1i.*k.*((x-x0).^2+(y-y0).^2)./2./s22e);%发散球面光波2
    u=u1+u2;%观察面上发散球面光1与发散球面光2的干涉
    I=u.*conj(u);%观察面上的光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))./50])%显示观察面上的光强
else
    set(handles.JiaoJvEdit,'enable','on');
    set(handles.JiaoJvSlider,'enable','on');
    
    set(handles.DianGuanYuanXEdit,'enable','off');
    set(handles.DianGuanYuanYEdit,'enable','off');
    set(handles.YvDongFanSheJingEdit,'enable','off');
    set(handles.YvDongFanSheJingSlider,'enable','off');
    set(handles.DianGuanYuanJvOJvLiEdit,'enable','off');
    set(handles.DianGuanYuanJvOJvLiSlider,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'enable','off');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiSlider,'enable','off');
    set(handles.YvDongFanSheJingEdit,'string','无');
    set(handles.DianGuanYuanJvOJvLiEdit,'string','无');
    set(handles.JingXianGuanYuanJvGuanChaPingDeJvLiEdit,'string','无');
    set(handles.DianGuanYuanXEdit,'string','无');
    set(handles.DianGuanYuanYEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，单位：米
    lamda_kuozhan=lamda-3e-10:1e-10:lamda+3e-10;%光源是扩展光源
    f=str2double(get(handles.JiaoJvEdit,'string'));%透镜L的焦距
    n=str2double(get(handles.ZheSheLiEdit,'string'));%折射率
    k=2.*pi./lamda_kuozhan/n;%波数
    d=str2double(get(handles.XvPinBanHouDuEdit,'string'));%M'1和M2的距离
    L=str2double(get(handles.GuanChaMianChuCunEdit,'string'));%观察面的尺寸，单位：米
    N=512;%采样数
    x=linspace(-L/2,L/2,N);%构建x坐标和y坐标
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    theta=sqrt(x.^2+y.^2)./f;%任意一束光（设角度为θ）即出射光与透镜L的夹角
    data=2.*n.*d.*cos(theta);%光程差
    I=0;%干涉光强
    for nn=1:1:length(k)
        pha=k(nn).*data;%两干涉光之间的相位差
        I=I+(1+cos(pha));%干涉光强
    end
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示观察面上的光强
end

% --- Executes during object creation, after setting all properties.
function BoChangSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BoChangSlider (see GCBO)
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
handles2= MaiKeErXvnGanSheYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

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
