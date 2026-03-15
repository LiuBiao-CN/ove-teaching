function varargout = KongHeFeng(varargin)
% KONGHEFENG MATLAB code for KongHeFeng.fig
%      KONGHEFENG, by itself, creates a new KONGHEFENG or raises the existing
%      singleton*.
%
%      H = KONGHEFENG returns the handle to a new KONGHEFENG or the handle to
%      the existing singleton*.
%
%      KONGHEFENG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KONGHEFENG.M with the given input arguments.
%
%      KONGHEFENG('Property','Value',...) creates a new KONGHEFENG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KongHeFeng_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KongHeFeng_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KongHeFeng

% Last Modified by GUIDE v2.5 12-Mar-2024 22:06:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KongHeFeng_OpeningFcn, ...
                   'gui_OutputFcn',  @KongHeFeng_OutputFcn, ...
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


% --- Executes just before KongHeFeng is made visible.
function KongHeFeng_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KongHeFeng (see VARARGIN)

% Choose default command line output for KongHeFeng
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.GanSheYuanLiTu);
imshow('孔和缝干涉原理图.JPG');%显示原理图
axes(handles.GanSheXianXiangTu);
imshow('背景.bmp');
axes(handles.GanSheQvXianTu);axis on;
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.ZheSheLiEdit,'enable','off');
set(handles.ZheSheLiSlider,'enable','off');
set(handles.JvGuanChaPinJvLiEdit,'enable','off');
set(handles.JvGuanChaPinJvLiEditSlider,'enable','off');
set(handles.GuanChaMianChiCunEdit,'enable','off');
set(handles.GuanChaMianChiCunSlider,'enable','off');
set(handles.ZhongXinJianJuEdit,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
set(handles.QingKongTuXingQvYvPushButton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KongHeFeng wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KongHeFeng_OutputFcn(hObject, eventdata, handles) 
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
handles2= KongHeFengYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

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


% --- Executes on button press in FangZhen.
function FangZhen_Callback(hObject, eventdata, handles)
% hObject    handle to FangZhen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.ZheSheLiEdit,'enable','on');
set(handles.ZheSheLiSlider,'enable','on');
set(handles.JvGuanChaPinJvLiEdit,'enable','on');
set(handles.JvGuanChaPinJvLiEditSlider,'enable','on');
set(handles.GuanChaMianChiCunEdit,'enable','on');
set(handles.GuanChaMianChiCunSlider,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
set(handles.QingKongTuXingQvYvPushButton,'enable','on');
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x0=(str2double(get(handles.KongWeiZhiEdit,'string')));%获取孔的x坐标，单位：米
a=(str2double(get(handles.FengWeiZhiEdit,'string')));%获取缝的x坐标，单位：米
z=(str2double(get(handles.JvGuanChaPinJvLiEdit,'string')));%观察面到衍射屏的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
y0=(str2double(get(handles.KongWeiZhiYEdit,'string')));%点光源的z坐标，单位：米
z0=(str2double(get(handles.KongWeiZhiEditZ,'string')));%点光源的z坐标，单位：米
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
%发散球面光波
A=1;%入射光强
x=linspace(-L./2,L./2,512);
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
rr=sqrt((x-x0).^2+(y-y0).^2+(z-z0).^2);%计算半径
U1=A.*exp(1i.*k.*rr);%发散球面光波
%发散柱面光波
r=sqrt((z-z0).^2+(x-a).^2);%细通光缝到观察屏(x,y,z)的距离
%r=z+((x-a).^2+(y-y).^2)/2/z;%细通光缝到观察屏(x,y,z)的距离
U2=A./sqrt(r).*exp(1i.*k.*r);%发散柱面光波
U=U1+U2;%两光的复振幅叠加
I=U.*conj(U);%光强
axes(handles.GanSheXianXiangTu);%调用坐标
imshow(I,[0,max(max(I))])%光强
axes(handles.GanSheQvXianTu);axis on;%调用坐标
TXJB = plot(x(512/2,:),I(512/2,:));legend('光强分布曲线');%光强x方向的剖线图
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d=abs(x0-a)*1000;%孔缝中心间隔
set(handles.ZhongXinJianJuEdit,'string',num2str(d));
handles.TXJB = TXJB;
guidata(hObject, handles);

function KongWeiZhiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to KongWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KongWeiZhiEdit as text
%        str2double(get(hObject,'String')) returns contents of KongWeiZhiEdit as a double


% --- Executes during object creation, after setting all properties.
function KongWeiZhiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KongWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FengWeiZhiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FengWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FengWeiZhiEdit as text
%        str2double(get(hObject,'String')) returns contents of FengWeiZhiEdit as a double


% --- Executes during object creation, after setting all properties.
function FengWeiZhiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengWeiZhiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZhongXinJianJuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ZhongXinJianJuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZhongXinJianJuEdit as text
%        str2double(get(hObject,'String')) returns contents of ZhongXinJianJuEdit as a double


% --- Executes during object creation, after setting all properties.
function ZhongXinJianJuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZhongXinJianJuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GuanChaMianChiCunEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianChiCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuanChaMianChiCunEdit as text
%        str2double(get(hObject,'String')) returns contents of GuanChaMianChiCunEdit as a double
var = str2double(get(handles.GuanChaMianChiCunEdit,'string'));
if(var<0)
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
var=get(handles.GuanChaMianChiCunSlider,'Value');%获取观察面的尺寸距滑动条的值
set(handles.GuanChaMianChiCunEdit,'String',num2str(var));%将滑动条的值(观察面的尺寸)转换成字符串然后赋给折射率文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x0=(str2double(get(handles.KongWeiZhiEdit,'string')));%获取孔的x坐标，单位：米
a=(str2double(get(handles.FengWeiZhiEdit,'string')));%获取缝的x坐标，单位：米
z=(str2double(get(handles.JvGuanChaPinJvLiEdit,'string')));%观察面到衍射屏的垂直距离，单位：米
L=var;%获取观察面的尺寸，单位：米
y0=(str2double(get(handles.KongWeiZhiYEdit,'string')));%点光源的z坐标，单位：米
z0=(str2double(get(handles.KongWeiZhiEditZ,'string')));%点光源的z坐标，单位：米
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
%发散球面光波
A=1;%入射光强
x=linspace(-L./2,L./2,512);
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
rr=sqrt((x-x0).^2+(y-y0).^2+(z-z0).^2);%计算半径
U1=A.*exp(1i.*k.*rr);%发散球面光波
%发散柱面光波
r=sqrt((z-z0).^2+(x-a).^2);%细通光缝到观察屏(x,y,z)的距离
%r=z+((x-a).^2+(y-y).^2)/2/z;%细通光缝到观察屏(x,y,z)的距离
U2=A./sqrt(r).*exp(1i.*k.*r);%发散柱面光波
U=U1+U2;%两光的复振幅叠加
I=U.*conj(U);%光强
axes(handles.GanSheXianXiangTu);%调用坐标
imshow(I,[0,max(max(I))])%光强
axes(handles.GanSheQvXianTu);axis on;%调用坐标
TXJB = plot(x(512/2,:),I(512/2,:));legend('光强分布曲线');%光强x方向的剖线图
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d=abs(x0-a)*1000;%双缝中心间隔
set(handles.ZhongXinJianJuEdit,'string',num2str(d));
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



function FengDaXiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FengDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FengDaXiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of FengDaXiaoEdit as a double


% --- Executes during object creation, after setting all properties.
function FengDaXiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function FengDaXiaoEditSlider_Callback(hObject, eventdata, handles)
% hObject    handle to FengDaXiaoEditSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function FengDaXiaoEditSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FengDaXiaoEditSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function KongDaXiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to KongDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KongDaXiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of KongDaXiaoEdit as a double


% --- Executes during object creation, after setting all properties.
function KongDaXiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KongDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function KongDaXiaoEditSlider_Callback(hObject, eventdata, handles)
% hObject    handle to KongDaXiaoEditSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function KongDaXiaoEditSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KongDaXiaoEditSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function JvGuanChaPinJvLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to JvGuanChaPinJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JvGuanChaPinJvLiEdit as text
%        str2double(get(hObject,'String')) returns contents of JvGuanChaPinJvLiEdit as a double
var = str2double(get(handles.JvGuanChaPinJvLiEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function JvGuanChaPinJvLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JvGuanChaPinJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function JvGuanChaPinJvLiEditSlider_Callback(hObject, eventdata, handles)
% hObject    handle to JvGuanChaPinJvLiEditSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.JvGuanChaPinJvLiEditSlider,'Value');%获取孔和缝距观察屏间距滑动条的值
set(handles.JvGuanChaPinJvLiEdit,'String',num2str(var));%将滑动条的值(孔和缝距观察屏间距)转换成字符串然后赋给折射率文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x0=(str2double(get(handles.KongWeiZhiEdit,'string')));%获取孔的x坐标，单位：米
a=(str2double(get(handles.FengWeiZhiEdit,'string')));%获取缝的x坐标，单位：米
z=var;%观察面到衍射屏的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
y0=(str2double(get(handles.KongWeiZhiYEdit,'string')));%点光源的z坐标，单位：米
z0=(str2double(get(handles.KongWeiZhiEditZ,'string')));%点光源的z坐标，单位：米
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
%发散球面光波
A=1;%入射光强
x=linspace(-L./2,L./2,512);
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
rr=sqrt((x-x0).^2+(y-y0).^2+(z-z0).^2);%计算半径
U1=A.*exp(1i.*k.*rr);%发散球面光波
%发散柱面光波
r=sqrt((z-z0).^2+(x-a).^2);%细通光缝到观察屏(x,y,z)的距离
%r=z+((x-a).^2+(y-y).^2)/2/z;%细通光缝到观察屏(x,y,z)的距离
U2=A./sqrt(r).*exp(1i.*k.*r);%发散柱面光波
U=U1+U2;%两光的复振幅叠加
I=U.*conj(U);%光强
axes(handles.GanSheXianXiangTu);%调用坐标
imshow(I,[0,max(max(I))])%光强
axes(handles.GanSheQvXianTu);axis on;%调用坐标
TXJB = plot(x(512/2,:),I(512/2,:));legend('光强分布曲线');%光强x方向的剖线图
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d=abs(x0-a)*1000;%双缝中心间隔
set(handles.ZhongXinJianJuEdit,'string',num2str(d));
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function JvGuanChaPinJvLiEditSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JvGuanChaPinJvLiEditSlider (see GCBO)
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
var=get(handles.ZheSheLiSlider,'Value');%获取介质中折射率滑动条的值
set(handles.ZheSheLiEdit,'String',num2str(var));%将滑动条的值(介质折射率)转换成字符串然后赋给折射率文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
x0=(str2double(get(handles.KongWeiZhiEdit,'string')));%获取孔的x坐标，单位：米
a=(str2double(get(handles.FengWeiZhiEdit,'string')));%获取缝的x坐标，单位：米
z=(str2double(get(handles.JvGuanChaPinJvLiEdit,'string')));%观察面到衍射屏的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
y0=(str2double(get(handles.KongWeiZhiYEdit,'string')));%点光源的z坐标，单位：米
z0=(str2double(get(handles.KongWeiZhiEditZ,'string')));%点光源的z坐标，单位：米
n=var;%获取实验环境折射率
k=2*pi/lamda/n;%波数
%发散球面光波
A=1;%入射光强
x=linspace(-L./2,L./2,512);
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
rr=sqrt((x-x0).^2+(y-y0).^2+(z-z0).^2);%计算半径
U1=A.*exp(1i.*k.*rr);%发散球面光波
%发散柱面光波
r=sqrt((z-z0).^2+(x-a).^2);%细通光缝到观察屏(x,y,z)的距离
%r=z+((x-a).^2+(y-y).^2)/2/z;%细通光缝到观察屏(x,y,z)的距离
U2=A./sqrt(r).*exp(1i.*k.*r);%发散柱面光波
U=U1+U2;%两光的复振幅叠加
I=U.*conj(U);%光强
axes(handles.GanSheXianXiangTu);%调用坐标
imshow(I,[0,max(max(I))])%光强
axes(handles.GanSheQvXianTu);axis on;%调用坐标
TXJB = plot(x(512/2,:),I(512/2,:));legend('光强分布曲线');%光强x方向的剖线图
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d=abs(x0-a)*1000;%双缝中心间隔
set(handles.ZhongXinJianJuEdit,'string',num2str(d));
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
var=get(handles.BoChangSlider,'Value');%获取介质中激光的波长滑动条的值
set(handles.BoChangEdit,'String',num2str(var));%将滑动条的值(介质中激光的波长)转换成字符串然后赋给折射率文本框
lamda=var*1e-9;%获取波长，单位：米
x0=(str2double(get(handles.KongWeiZhiEdit,'string')));%获取孔的x坐标，单位：米
a=(str2double(get(handles.FengWeiZhiEdit,'string')));%获取缝的x坐标，单位：米
z=(str2double(get(handles.JvGuanChaPinJvLiEdit,'string')));%观察面到衍射屏的垂直距离，单位：米
L=(str2double(get(handles.GuanChaMianChiCunEdit,'string')));%获取观察面的尺寸，单位：米
y0=(str2double(get(handles.KongWeiZhiYEdit,'string')));%点光源的z坐标，单位：米
z0=(str2double(get(handles.KongWeiZhiEditZ,'string')));%点光源的z坐标，单位：米
n=(str2double(get(handles.ZheSheLiEdit,'string')));%获取实验环境折射率
k=2*pi/lamda/n;%波数
%发散球面光波
A=1;%入射光强
x=linspace(-L./2,L./2,512);
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
rr=sqrt((x-x0).^2+(y-y0).^2+(z-z0).^2);%计算半径
U1=A.*exp(1i.*k.*rr);%发散球面光波
%发散柱面光波
r=sqrt((z-z0).^2+(x-a).^2);%细通光缝到观察屏(x,y,z)的距离
%r=z+((x-a).^2+(y-y).^2)/2/z;%细通光缝到观察屏(x,y,z)的距离
U2=A./sqrt(r).*exp(1i.*k.*r);%发散柱面光波
U=U1+U2;%两光的复振幅叠加
I=U.*conj(U);%光强
axes(handles.GanSheXianXiangTu);%调用坐标
imshow(I,[0,max(max(I))])%光强
axes(handles.GanSheQvXianTu);axis on;%调用坐标
TXJB = plot(x(512/2,:),I(512/2,:));legend('光强分布曲线');%光强x方向的剖线图
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
d=abs(x0-a)*1000;%双缝中心间隔
set(handles.ZhongXinJianJuEdit,'string',num2str(d));
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


% --- Executes on button press in QingKongTuXingQvYvPushButton.
function QingKongTuXingQvYvPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongTuXingQvYvPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.GanSheQvXianTu);
xlabel('');ylabel('');legend('off');
axis off;
cla(handles.GanSheXianXiangTu);%清空图形区域，杨氏双孔干涉图样
cla(handles.GanSheQvXianTu);%清空图形区域，杨氏双孔干涉光强分布曲线图(X方向)



function KongWeiZhiEditY_Callback(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text9 as text
%        str2double(get(hObject,'String')) returns contents of text9 as a double


% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function KongWeiZhiEditZ_Callback(hObject, eventdata, handles)
% hObject    handle to KongWeiZhiEditZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KongWeiZhiEditZ as text
%        str2double(get(hObject,'String')) returns contents of KongWeiZhiEditZ as a double


% --- Executes during object creation, after setting all properties.
function KongWeiZhiEditZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KongWeiZhiEditZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function KongWeiZhiYEdit_Callback(hObject, eventdata, handles)
% hObject    handle to KongWeiZhiYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KongWeiZhiYEdit as text
%        str2double(get(hObject,'String')) returns contents of KongWeiZhiYEdit as a double


% --- Executes during object creation, after setting all properties.
function KongWeiZhiYEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KongWeiZhiYEdit (see GCBO)
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
