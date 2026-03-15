function varargout = YangShiShuangKong(varargin)
%YANGSHISHUANGKONG MATLAB code file for YangShiShuangKong.fig
%      YANGSHISHUANGKONG, by itself, creates a new YANGSHISHUANGKONG or raises the existing
%      singleton*.
%
%      H = YANGSHISHUANGKONG returns the handle to a new YANGSHISHUANGKONG or the handle to
%      the existing singleton*.
%
%      YANGSHISHUANGKONG('Property','Value',...) creates a new YANGSHISHUANGKONG using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to YangShiShuangKong_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      YANGSHISHUANGKONG('CALLBACK') and YANGSHISHUANGKONG('CALLBACK',hObject,...) call the
%      local function named CALLBACK in YANGSHISHUANGKONG.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help YangShiShuangKong

% Last Modified by GUIDE v2.5 16-Mar-2024 09:44:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YangShiShuangKong_OpeningFcn, ...
                   'gui_OutputFcn',  @YangShiShuangKong_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before YangShiShuangKong is made visible.
function YangShiShuangKong_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for YangShiShuangKong
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
YangShiShuangKongGanSheYuanLiTu = imread('杨氏双孔干涉原理图.jpg');%获取杨氏双孔干涉原理图
axes(handles.axes1);%显示杨氏双孔干涉原理图
imshow(YangShiShuangKongGanSheYuanLiTu);%显示杨氏双孔干涉原理图
axes(handles.axes2);%显示杨氏双孔干涉原理图
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.QingKongTuXingQyvYvPushButton,'enable','off');%设置控件为灰色
set(handles.BaoCunPushbutton,'enable','off');
% set(handles.BoChangEdit,'enable','off');
% set(handles.BoChangSlider,'enable','off');
% set(handles.ZheSheLiEdit,'enable','off');
% set(handles.ZheSheLiSlider,'enable','off');
% set(handles.ShuangKongJvGuanChaPinJvLiEdit,'enable','off');
% set(handles.ShuangKongJvGuanChaPinJvLiSlider,'enable','off');
% set(handles.DiYiGeKongDeGuangQvangEdit,'enable','off');
% set(handles.DiYiGeKongDeGuangQvangSlider,'enable','off');
% set(handles.DiErGeKongDeGuangQvangEdit,'enable','off');
% set(handles.DiErGeKongDeGuangQvangSlider,'enable','off');
% set(handles.DianGuangYuanSX,'enable','off');
% set(handles.DianGuangYuanSY,'enable','off');
% set(handles.DianGuangYuanSZ,'enable','off');
% set(handles.DianGuangYuanS1X,'enable','off');
% set(handles.DianGuangYuanS1Y,'enable','off');
% set(handles.DianGuangYuanS1Z,'enable','off');
% set(handles.DianGuangYuanS2X,'enable','off');
% set(handles.DianGuangYuanS2Y,'enable','off');
% set(handles.DianGuangYuanS2Z,'enable','off');
% set(handles.GuanChaMianChiCunEdit,'enable','off');
% set(handles.GuanChaMianChiCunSlider,'enable','off');
% set(handles.GanSheTiaoWenDuiBiDuEdit,'enable','off');
% set(handles.YanShiShuangKongJianJvEdit,'enable','off');
% set(handles.XiangLingLianAnTiaoWenJianJvEdit,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes YangShiShuangKong wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = YangShiShuangKong_OutputFcn(hObject, eventdata, handles)
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

% --- Executes on button press in FangZheng.
function FangZheng_Callback(hObject, eventdata, handles)
% hObject    handle to FangZheng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%********************************************************************************************************
set(handles.QingKongTuXingQyvYvPushButton,'enable','on');%设置控件为可执行
set(handles.BaoCunPushbutton,'enable','on');
set(handles.BoChangEdit,'enable','on');
set(handles.BoChangSlider,'enable','on');
set(handles.ZheSheLiEdit,'enable','on');
set(handles.ZheSheLiSlider,'enable','on');
set(handles.ShuangKongJvGuanChaPinJvLiEdit,'enable','on');
set(handles.ShuangKongJvGuanChaPinJvLiSlider,'enable','on');
set(handles.DiYiGeKongDeGuangQvangEdit,'enable','on');
set(handles.DiYiGeKongDeGuangQvangSlider,'enable','on');
set(handles.DiErGeKongDeGuangQvangEdit,'enable','on');
set(handles.DiErGeKongDeGuangQvangSlider,'enable','on');
set(handles.DianGuangYuanSX,'enable','on');
set(handles.DianGuangYuanSY,'enable','on');
set(handles.DianGuangYuanSZ,'enable','on');
set(handles.DianGuangYuanS1X,'enable','on');
set(handles.DianGuangYuanS1Y,'enable','on');
set(handles.DianGuangYuanS1Z,'enable','on');
set(handles.DianGuangYuanS2X,'enable','on');
set(handles.DianGuangYuanS2Y,'enable','on');
set(handles.DianGuangYuanS2Z,'enable','on');
set(handles.GuanChaMianChiCunEdit,'enable','on');
set(handles.GuanChaMianChiCunSlider,'enable','on');
%********************************************************************************************************
%取值
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
I1=str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));%获取S1光强，单位：cd
I2=str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=str2double(get(handles.GuanChaMianChiCunEdit,'string'));%获取观察面的尺寸，单位：m
D=str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));%获取双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
handles.TXJB = TXJB;
guidata(hObject, handles);
     
function DianGuangYuanS2X_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS2X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuangYuanS2X as text
%        str2double(get(hObject,'String')) returns contents of DianGuangYuanS2X as a double


% --- Executes during object creation, after setting all properties.
function DianGuangYuanS2X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS2X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuangYuanS2Y_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS2Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuangYuanS2Y as text
%        str2double(get(hObject,'String')) returns contents of DianGuangYuanS2Y as a double


% --- Executes during object creation, after setting all properties.
function DianGuangYuanS2Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS2Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuangYuanS2Z_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS2Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuangYuanS2Z as text
%        str2double(get(hObject,'String')) returns contents of DianGuangYuanS2Z as a double


% --- Executes during object creation, after setting all properties.
function DianGuangYuanS2Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS2Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuangYuanS1X_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS1X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuangYuanS1X as text
%        str2double(get(hObject,'String')) returns contents of DianGuangYuanS1X as a double


% --- Executes during object creation, after setting all properties.
function DianGuangYuanS1X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS1X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuangYuanS1Y_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS1Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuangYuanS1Y as text
%        str2double(get(hObject,'String')) returns contents of DianGuangYuanS1Y as a double


% --- Executes during object creation, after setting all properties.
function DianGuangYuanS1Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS1Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DianGuangYuanS1Z_Callback(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS1Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DianGuangYuanS1Z as text
%        str2double(get(hObject,'String')) returns contents of DianGuangYuanS1Z as a double


% --- Executes during object creation, after setting all properties.
function DianGuangYuanS1Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DianGuangYuanS1Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GanSheTiaoWenDuiBiDuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GanSheTiaoWenDuiBiDuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GanSheTiaoWenDuiBiDuEdit as text
%        str2double(get(hObject,'String')) returns contents of GanSheTiaoWenDuiBiDuEdit as a double


% --- Executes during object creation, after setting all properties.
function GanSheTiaoWenDuiBiDuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GanSheTiaoWenDuiBiDuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YanShiShuangKongJianJvEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YanShiShuangKongJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YanShiShuangKongJianJvEdit as text
%        str2double(get(hObject,'String')) returns contents of YanShiShuangKongJianJvEdit as a double


% --- Executes during object creation, after setting all properties.
function YanShiShuangKongJianJvEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YanShiShuangKongJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XiangLingLianAnTiaoWenJianJvEdit_Callback(hObject, eventdata, handles)
% hObject    handle to XiangLingLianAnTiaoWenJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XiangLingLianAnTiaoWenJianJvEdit as text
%        str2double(get(hObject,'String')) returns contents of XiangLingLianAnTiaoWenJianJvEdit as a double


% --- Executes during object creation, after setting all properties.
function XiangLingLianAnTiaoWenJianJvEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XiangLingLianAnTiaoWenJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DiErGeKongDeGuangQvangEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DiErGeKongDeGuangQvangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DiErGeKongDeGuangQvangEdit as text
%        str2double(get(hObject,'String')) returns contents of DiErGeKongDeGuangQvangEdit as a double
var = str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function DiErGeKongDeGuangQvangEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiErGeKongDeGuangQvangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function DiErGeKongDeGuangQvangSlider_Callback(hObject, eventdata, handles)
% hObject    handle to DiErGeKongDeGuangQvangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.DiErGeKongDeGuangQvangSlider,'Value');%获取实验中点光源孔S2光强滑动条的值
set(handles.DiErGeKongDeGuangQvangEdit,'String',num2str(var));%将滑动条的值(点光源孔S2光强)转换成字符串然后赋给对应文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
I1=str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));%获取S1光强，单位：cd
I2=var;%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=str2double(get(handles.GuanChaMianChiCunEdit,'string'));%获取观察面的尺寸，单位：m
D=str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));%获取双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function DiErGeKongDeGuangQvangSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiErGeKongDeGuangQvangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
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
var=get(handles.GuanChaMianChiCunSlider,'Value');%获取实验中观察面尺寸滑动条的值
set(handles.GuanChaMianChiCunEdit,'String',num2str(var));%将滑动条的值(观察面的尺寸)转换成字符串然后赋给观察面尺寸文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
I1=str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));%获取S1光强，单位：cd
I2=str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=var;%获取观察面的尺寸，单位：m
D=str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));%获取双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
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



function DiYiGeKongDeGuangQvangEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DiYiGeKongDeGuangQvangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DiYiGeKongDeGuangQvangEdit as text
%        str2double(get(hObject,'String')) returns contents of DiYiGeKongDeGuangQvangEdit as a double
var = str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function DiYiGeKongDeGuangQvangEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiYiGeKongDeGuangQvangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function DiYiGeKongDeGuangQvangSlider_Callback(hObject, eventdata, handles)
% hObject    handle to DiYiGeKongDeGuangQvangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.DiYiGeKongDeGuangQvangSlider,'Value');%获取实验中点光源孔S1光强滑动条的值
set(handles.DiYiGeKongDeGuangQvangEdit,'String',num2str(var));%将滑动条的值(点光源孔S1光强)转换成字符串然后赋给对应文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
I1=var;%获取S1光强，单位：cd
I2=str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=str2double(get(handles.GuanChaMianChiCunEdit,'string'));%获取观察面的尺寸，单位：m
D=str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));%获取双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function DiYiGeKongDeGuangQvangSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DiYiGeKongDeGuangQvangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function ShuangKongJvGuanChaPinJvLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ShuangKongJvGuanChaPinJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ShuangKongJvGuanChaPinJvLiEdit as text
%        str2double(get(hObject,'String')) returns contents of ShuangKongJvGuanChaPinJvLiEdit as a double
var = str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function ShuangKongJvGuanChaPinJvLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShuangKongJvGuanChaPinJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ShuangKongJvGuanChaPinJvLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ShuangKongJvGuanChaPinJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.ShuangKongJvGuanChaPinJvLiSlider,'Value');%获取实验中双孔距观察屏间距滑动条的值
set(handles.ShuangKongJvGuanChaPinJvLiEdit,'String',num2str(var));%将滑动条的值(双孔距观察屏间距)转换成字符串然后赋给对应文本框
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
I1=str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));%获取S1光强，单位：cd
I2=str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=str2double(get(handles.GuanChaMianChiCunEdit,'string'));%获取观察面的尺寸，单位：m
D=var;%双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
handles.TXJB = TXJB;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function ShuangKongJvGuanChaPinJvLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ShuangKongJvGuanChaPinJvLiSlider (see GCBO)
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
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=var;%获取介质折射率(屈光度)
I1=str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));%获取S1光强，单位：cd
I2=str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=str2double(get(handles.GuanChaMianChiCunEdit,'string'));%获取观察面的尺寸，单位：m
D=str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));%获取双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
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
var=get(handles.BoChangSlider,'Value');%获取波长滑动条的值
set(handles.BoChangEdit,'String',num2str(var));%将滑动条的值(波长)转换成字符串然后赋给波长文本框
lamda=var*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
I1=str2double(get(handles.DiYiGeKongDeGuangQvangEdit,'string'));%获取S1光强，单位：cd
I2=str2double(get(handles.DiErGeKongDeGuangQvangEdit,'string'));%获取S2光强，单位：cd
Sx=str2double(get(handles.DianGuangYuanSX,'string'));%获取单色点光源(小孔S)坐标x，单位：m
Sy=str2double(get(handles.DianGuangYuanSY,'string'));%获取单色点光源(小孔S)坐标y，单位：m
Sz=str2double(get(handles.DianGuangYuanSZ,'string'));%获取单色点光源(小孔S)坐标z，单位：m
S1x=str2double(get(handles.DianGuangYuanS1X,'string'));%获取点光源(小孔S1)坐标坐标x，单位：m
S1y=str2double(get(handles.DianGuangYuanS1Y,'string'));%获取点光源(小孔S1)坐标坐标y，单位：m
S1z=str2double(get(handles.DianGuangYuanS1Z,'string'));%获取点光源(小孔S1)坐标坐标z，单位：m
S2x=str2double(get(handles.DianGuangYuanS2X,'string'));%获取点光源(小孔S2)坐标坐标x，单位：m
S2y=str2double(get(handles.DianGuangYuanS2Y,'string'));%获取点光源(小孔S2)坐标坐标y，单位：m
S2z=str2double(get(handles.DianGuangYuanS2Z,'string'));%获取点光源(小孔S2)坐标坐标z，单位：m
L=str2double(get(handles.GuanChaMianChiCunEdit,'string'));%获取观察面的尺寸，单位：m
D=str2double(get(handles.ShuangKongJvGuanChaPinJvLiEdit,'string'));%获取双孔距观察屏间距，单位：m
%********************************************************************************************************
%计算
N=512;%采样数
x=linspace(-L/2,L/2,N);%观察屏坐标
y=x;%观察屏坐标
[x,y]=meshgrid(x,y);%观察屏坐标
r_s1=sqrt((S1x-Sx).^2+(S1y-Sy).^2+(S1z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S1)的距离
r_s2=sqrt((S2x-Sx).^2+(S2y-Sy).^2+(S2z-Sz).^2);%单色点光源(小孔S)距点光源(小孔S2)的距离
s1_p=sqrt((x-S1x).^2+(y-S1y).^2+(D-S1z).^2);%观察点距点光源(小孔S1)的距离
s2_p=sqrt((x-S2x).^2+(y-S2y).^2+(D-S2z).^2);%观察点距点光源(小孔S1)的距离
deta=k.*n.*((s2_p+r_s2)-(s1_p+r_s1));%计算相位差
I=I1+I2+2.*sqrt(I1*I2).*cos(deta);%P点干涉条纹强度
d=sqrt((S1x-S2x).^2+(S1y-S2y).^2+(S1z-S2z).^2).*1000;%杨氏双孔干涉时双孔间距(mm)
e=D.*lamda./d.*1000.*1000;%相邻两暗(亮)条纹间距(mm)
m=2.*sqrt(I1.*I2)./(I1+I2);%杨氏双孔干涉时干涉条纹对比度
%********************************************************************************************************
%显示
set(handles.GanSheTiaoWenDuiBiDuEdit,'string',num2str(m));%显示杨氏双孔干涉时干涉条纹对比度
set(handles.YanShiShuangKongJianJvEdit,'string',num2str(d));%显示杨氏双孔干涉时双孔间距
set(handles.XiangLingLianAnTiaoWenJianJvEdit,'string',num2str(e));%显示相邻两暗(亮)条纹间距
axes(handles.axes2);%调用杨氏双孔干涉图样坐标
imshow(I,[0,max(max(I))])%显示杨氏双孔干涉图样
axes(handles.axes3);axis on;%调用光强分布曲线图坐标
TXJB = plot(x(N/2,:),I(N/2,:)./max(max(I)));legend('光强分布曲线');%显示光强分布曲线图坐标
xlabel('x方向坐标(m)');ylabel('光强(W/m^2)');%为坐标轴添加标签
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


% --------------------------------------------------------------------
function ShiYanYuanLi_Callback(hObject, eventdata, handles)
% hObject    handle to ShiYanYuanLi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Word=actxserver('Word.Application');%创建COM服务器
% Word.Visible=1;%打开Word
% Word.Documents.Open([pwd,'\杨氏双孔干涉实验原理.docx'])%打开相关文档
handles2= YangShiShuangKongYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --------------------------------------------------------------------
function ShiYanBuZou_Callback(hObject, eventdata, handles)
% hObject    handle to ShiYanBuZou (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ZhuYvShiXiang_Callback(hObject, eventdata, handles)
% hObject    handle to ZhuYvShiXiang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function SiKaoTi_Callback(hObject, eventdata, handles)
% hObject    handle to SiKaoTi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uitoggletool2_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uitoggletool2_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uitoggletool2_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in QingKongTuXingQyvYvPushButton.
function QingKongTuXingQyvYvPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongTuXingQyvYvPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 axes(handles.axes3);
 xlabel('');ylabel('');legend('off');
 axis off;
cla(handles.axes2);%清空图形区域，杨氏双孔干涉图样
cla(handles.axes3);%清空图形区域，杨氏双孔干涉光强分布曲线图(X方向)


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
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
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
    set(handles.TXJB,'color','g');%绿色
end

% --------------------------------------------------------------------
function BlueUntitled_Callback(hObject, eventdata, handles)
% hObject    handle to BlueUntitled (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'TXJB')%绘制曲线以及改变其颜色
    set(handles.TXJB,'color','b');%蓝色
end

% --------------------------------------------------------------------
function LINE_Callback(hObject, eventdata, handles)
% hObject    handle to LINE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
