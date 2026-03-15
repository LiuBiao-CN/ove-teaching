function varargout = YangShiShuangFeng(varargin)
% YANGSHISHUANGFENG MATLAB code for YangShiShuangFeng.fig
%      YANGSHISHUANGFENG, by itself, creates a new YANGSHISHUANGFENG or raises the existing
%      singleton*.
%
%      H = YANGSHISHUANGFENG returns the handle to a new YANGSHISHUANGFENG or the handle to
%      the existing singleton*.
%
%      YANGSHISHUANGFENG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YANGSHISHUANGFENG.M with the given input arguments.
%
%      YANGSHISHUANGFENG('Property','Value',...) creates a new YANGSHISHUANGFENG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before YangShiShuangFeng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to YangShiShuangFeng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help YangShiShuangFeng

% Last Modified by GUIDE v2.5 12-Mar-2024 21:35:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YangShiShuangFeng_OpeningFcn, ...
                   'gui_OutputFcn',  @YangShiShuangFeng_OutputFcn, ...
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


% --- Executes just before YangShiShuangFeng is made visible.
function YangShiShuangFeng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to YangShiShuangFeng (see VARARGIN)

% Choose default command line output for YangShiShuangFeng
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
YangShiShuangFengGanSheYuanLiTu = imread('杨氏双缝干涉原理图.jpg');
axes(handles.YangShiShuangFengGanSheYuanLiTu);
imshow(YangShiShuangFengGanSheYuanLiTu);
axes(handles.YangShiShuangFengGanSheXianXiangTu);
imshow('背景.bmp');
axes(handles.YangShiShuangFengGanSheQvXianTu);
imshow('背景.bmp');
% set(handles.BoChangEdit,'enable','off');%设置控件为灰色
% set(handles.BoChangSlider,'enable','off');%设置控件为灰色
% set(handles.ZheSheLiEdit,'enable','off');%设置控件为灰色
% set(handles.ZheSheLiSlider,'enable','off');%设置控件为灰色
% set(handles.ShuangFengJvGuanChaPinJvLiEdit,'enable','off');
% set(handles.ShuangFengJvGuanChaPinJvLiSlider,'enable','off');
% set(handles.GuanChaMianChiCunEdit,'enable','off');
% set(handles.GuanChaMianChiCunSlider,'enable','off');
% set(handles.DiYiGeFengDaXiaoEdit,'enable','off');
% set(handles.DiYiGeFengDaXiaoSlider,'enable','off');
% set(handles.DiErGeFengDaXiaoEdit,'enable','off');
% set(handles.DiErGeFengDaXiaoSlider,'enable','off');
% set(handles.DiYiFengWeiZhiEdit,'enable','off');
% set(handles.DiErGeFengWeiZhiEdit,'enable','off');
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'enable','off');
set(handles.BaoCunpushbutton,'enable','off');
set(handles.QingKongTuXingQyvYvPushButton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes YangShiShuangFeng wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = YangShiShuangFeng_OutputFcn(hObject, eventdata, handles) 
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
handles1= ZhuJieMian;%取得光学仿真杨氏干涉面对象
handles1=guihandles(handles1);%跳转到光学仿真杨氏干涉界面

% --- Executes on button press in FanHui.
function FanHui_Callback(hObject, eventdata, handles)
% hObject    handle to FanHui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;%关闭当前窗口
handles2= YangShiGanShe;%取得光学仿真主界面对象
handles2=guihandles(handles2);%跳转到光学仿真主界面


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles2= YangShiShuangFengYuanLi;%取得信息光学仿真界面对象
handles2=guihandles(handles2);%跳转到信息光学仿真界面

% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
var=get(handles.BoChangSlider,'Value');%获取波长滑动条的值
set(handles.BoChangEdit,'String',num2str(var));%将滑动条的值(波长)转换成字符串然后赋给波长文本框
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=var*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=(str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string')));%观察面到双缝的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
a1=(str2double(get(handles.DiYiGeFengDaXiaoEdit,'string')))*1e-3;%获取第一个通光缝宽度
a2=(str2double(get(handles.DiErGeFengDaXiaoEdit,'string')))*1e-3;%获取第二个通光缝宽度
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
handles.TXJB = TXJB;
guidata(hObject, handles);
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);
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

function ShuangFengJvGuanChaPinJvLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ShuangFengJvGuanChaPinJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ShuangFengJvGuanChaPinJvLiEdit as text
%        str2double(get(hObject,'String')) returns contents of ShuangFengJvGuanChaPinJvLiEdit as a double
var = str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function ShuangFengJvGuanChaPinJvLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShuangFengJvGuanChaPinJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ShuangFengJvGuanChaPinJvLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ShuangFengJvGuanChaPinJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.ShuangFengJvGuanChaPinJvLiSlider,'Value');%获取实验中两缝到观察屏间距的值
set(handles.ShuangFengJvGuanChaPinJvLiEdit,'String',num2str(var));%将滑动条的值(两缝到观察屏的间距)转换成字符串然后赋给两缝到观察屏间距的文本框
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=var;%观察面到双缝的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
a1=(str2double(get(handles.DiYiGeFengDaXiaoEdit,'string')))*1e-3;%获取第一个通光缝宽度
a2=(str2double(get(handles.DiErGeFengDaXiaoEdit,'string')))*1e-3;%获取第二个通光缝宽度
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ShuangFengJvGuanChaPinJvLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShuangFengJvGuanChaPinJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
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
var=get(handles.ZheSheLiSlider,'Value');%获取实验室环境的折射率滑动条的值
set(handles.ZheSheLiEdit,'String',num2str(var));%将滑动条的值(折射率)转换成字符串然后赋给折射率文本框
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=(str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string')));%观察面到双缝的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
a1=(str2double(get(handles.DiYiGeFengDaXiaoEdit,'string')))*1e-3;%获取第一个通光缝宽度
a2=(str2double(get(handles.DiErGeFengDaXiaoEdit,'string')))*1e-3;%获取第二个通光缝宽度
n=var;%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ZheSheLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZheSheLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DiErGeFengDaXiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DiErGeFengDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DiErGeFengDaXiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of DiErGeFengDaXiaoEdit as a double
var = str2double(get(handles.DiErGeFengDaXiaoEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function DiErGeFengDaXiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiErGeFengDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function DiErGeFengDaXiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to DiErGeFengDaXiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.DiErGeFengDaXiaoSlider,'Value');%获取实验中第二个缝大小滑动条的值
set(handles.DiErGeFengDaXiaoEdit,'String',num2str(var));%将滑动条的值(第二个缝大小)转换成字符串然后赋给第二个缝大小文本框
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=(str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string')));%观察面到双缝的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
a1=(str2double(get(handles.DiYiGeFengDaXiaoEdit,'string')))*1e-3;%获取第一个通光缝宽度
a2=var;%获取第二个通光缝宽度
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function DiErGeFengDaXiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiErGeFengDaXiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DiYiGeFengDaXiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DiYiGeFengDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DiYiGeFengDaXiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of DiYiGeFengDaXiaoEdit as a double
var = str2double(get(handles.DiYiGeFengDaXiaoEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function DiYiGeFengDaXiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiYiGeFengDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function DiYiGeFengDaXiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to DiYiGeFengDaXiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.DiYiGeFengDaXiaoSlider,'Value');%获取实验中第一个缝大小滑动条的值
set(handles.DiYiGeFengDaXiaoEdit,'String',num2str(var));%将滑动条的值(第一个缝大小)转换成字符串然后赋给第一个缝大小文本框
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=(str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string')));%观察面到双缝的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
a1=var;%获取第一个通光缝宽度
a2=(str2double(get(handles.DiErGeFengDaXiaoEdit,'string')))*1e-3;%获取第二个通光缝宽度
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function DiYiGeFengDaXiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiYiGeFengDaXiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in FangZhen.
function FangZhen_Callback(hObject, eventdata, handles)
% hObject    handle to FangZhen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');%设置控件为灰色
set(handles.ZheSheLiEdit,'enable','on');%设置控件为灰色
set(handles.ZheSheLiSlider,'enable','on');%设置控件为灰色
set(handles.ShuangFengJvGuanChaPinJvLiEdit,'enable','on');
set(handles.ShuangFengJvGuanChaPinJvLiSlider,'enable','on');
set(handles.GuanChaMianChiCunEdit,'enable','on');
set(handles.GuanChaMianChiCunSlider,'enable','on');
set(handles.DiYiGeFengDaXiaoEdit,'enable','on');
set(handles.DiYiGeFengDaXiaoSlider,'enable','on');
set(handles.DiErGeFengDaXiaoEdit,'enable','on');
set(handles.DiErGeFengDaXiaoSlider,'enable','on');
set(handles.DiYiFengWeiZhiEdit,'enable','on');
set(handles.DiErGeFengWeiZhiEdit,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=(str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string')));%观察面到双缝的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
a1=(str2double(get(handles.DiYiGeFengDaXiaoEdit,'string')))*1e-3;%获取第一个通光缝宽度
a2=(str2double(get(handles.DiErGeFengDaXiaoEdit,'string')))*1e-3;%获取第二个通光缝宽度
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);

function GuanChaMianChiCunEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChiCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuanChaMianChiCunEdit as text
%        str2double(get(hObject,'String')) returns contents of GuanChaMianChiCunEdit as a double
var = str2double(get(handles.GuanChaMianChiCunEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GuanChaMianChiCunEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChiCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GuanChaMianChiCunSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChiCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GuanChaMianChiCunSlider,'Value');%获取实验中观察面尺寸滑动条的值
set(handles.GuanChaMianChiCunEdit,'String',num2str(var));%将滑动条的值(观察面的尺寸)转换成字符串然后赋给观察面尺寸文本框
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
set(handles.BaoCunpushbutton,'enable','on');
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x01=(str2double(get(handles.DiYiFengWeiZhiEdit,'string')));%获取第一个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
x02=(str2double(get(handles.DiErGeFengWeiZhiEdit,'string')));%获取第二个细通光缝的x坐标，单位：米即细通光缝平行于yo轴，距该轴的距离为b
d=(str2double(get(handles.ShuangFengJvGuanChaPinJvLiEdit,'string')));%观察面到双缝的垂直距离，单位：米
L=var;%获取观察面的尺寸，单位：米
a1=(str2double(get(handles.DiYiGeFengDaXiaoEdit,'string')))*1e-3;%获取第一个通光缝宽度
a2=(str2double(get(handles.DiErGeFengDaXiaoEdit,'string')))*1e-3;%获取第二个通光缝宽度
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
A=d;%初始振幅
N=512;%采样数
if(a1 ~= 0)
    x0=linspace(x01-a1/2,x01+a1/2,N);%第一个单缝所在双缝屏的坐标
else
    x0=x01;%第一个单缝所在双缝屏的坐标
end

if(a2 ~= 0)
    x1=linspace(x02-a2/2,x02+a2/2,N);%第二个单缝所在双缝屏的坐标
else
    x1 = x02;%第二个单缝所在双缝屏的坐标
end

x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
u=zeros(size(x,1),size(y,2));%第一个单缝的初始振幅
u0=zeros(size(x,1),size(y,2));%第二个单缝的初始振幅
if(length(x0) ~= 1)
    for nn=1:N
        r_r=(x-x0(nn))+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
        r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
        u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
        u=u+u1;%第一个单缝的复振幅
    end
else
    r_r=(x-x0)+1j.*(d-0);%第一个柱面波中每一条单缝到观察屏的距离的复数
    r=abs(r_r);%第一个柱面波中每一条单缝到观察屏的距离
    u1=A./sqrt(r).*exp(1j.*k.*r);%第一个单缝的复振幅
    u=u+u1;%第一个单缝的复振幅
end

if(length(x1) ~= 1)
    for nn=1:N
        r_r1=(x-x1(nn))+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
    end
else
        r_r1=(x-x1)+1j.*(d-0);%第二个柱面波中每一条单缝到观察屏的距离的复数
        r1=abs(r_r1);%第二个柱面波中每一条单缝到观察屏的距离
        u2=A./sqrt(r1).*exp(1j.*k.*r1);%第二个单缝的复振幅
        u0=u0+u2;%第二个单缝复振幅
end
u_u0=u+u0;%二个柱面光波复振幅叠加
I=u_u0.*conj(u_u0);%光强
axes(handles.YangShiShuangFengGanSheXianXiangTu)
imshow(I/max(max(I)),[])%双缝干涉光强分布-柱面光波叠加
axes(handles.YangShiShuangFengGanSheQvXianTu);axis on;
TXJB = plot(x(N/2,:),I(N/2,:));legend('光强分布曲线');%双缝干涉光强分布x方向上的剖线（复振幅的模）-柱面光波叠加
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d_x01_x02=abs(x01-x02)*1000;%双缝中心间隔
set(handles.ShuangFengZhongXingJianGeJianCeEdit,'string',num2str(d_x01_x02));
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function GuanChaMianChiCunSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChiCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function DiYiFengWeiZhiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DiYiFengWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DiYiFengWeiZhiEdit as text
%        str2double(get(hObject,'String')) returns contents of DiYiFengWeiZhiEdit as a double


% --- Executes during object creation, after setting all properties.
function DiYiFengWeiZhiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiYiFengWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DiErGeFengWeiZhiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DiErGeFengWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DiErGeFengWeiZhiEdit as text
%        str2double(get(hObject,'String')) returns contents of DiErGeFengWeiZhiEdit as a double


% --- Executes during object creation, after setting all properties.
function DiErGeFengWeiZhiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiErGeFengWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function YangShiShuangFengGanSheYuanLiTu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YangShiShuangFengGanSheYuanLiTu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate YangShiShuangFengGanSheYuanLiTu



function ShuangFengZhongXingJianGeJianCeEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ShuangFengZhongXingJianGeJianCeEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ShuangFengZhongXingJianGeJianCeEdit as text
%        str2double(get(hObject,'String')) returns contents of ShuangFengZhongXingJianGeJianCeEdit as a double


% --- Executes during object creation, after setting all properties.
function ShuangFengZhongXingJianGeJianCeEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShuangFengZhongXingJianGeJianCeEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uibuttongroup12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function uibuttongroup8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function YangShiShuangFengGanSheXianXiangTu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YangShiShuangFengGanSheXianXiangTu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate YangShiShuangFengGanSheXianXiangTu


% --- Executes on button press in QingKongTuXingQyvYvPushButton.
function QingKongTuXingQyvYvPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongTuXingQyvYvPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.YangShiShuangFengGanSheQvXianTu);
xlabel('');ylabel('');legend('off');
axis off;
cla(handles.YangShiShuangFengGanSheXianXiangTu);%清空图形区域，杨氏双缝干涉图样
cla(handles.YangShiShuangFengGanSheQvXianTu);%清空图形区域，杨氏双缝干涉光强分布曲线图(X方向)


% --- Executes on button press in BaoCunpushbutton.
function BaoCunpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to BaoCunpushbutton (see GCBO)
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
