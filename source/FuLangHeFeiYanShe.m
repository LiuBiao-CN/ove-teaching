function varargout = FuLangHeFeiYanShe(varargin)
% FULANGHEFEIYANSHE MATLAB code for FuLangHeFeiYanShe.fig
%      FULANGHEFEIYANSHE, by itself, creates a new FULANGHEFEIYANSHE or raises the existing
%      singleton*.
%
%      H = FULANGHEFEIYANSHE returns the handle to a new FULANGHEFEIYANSHE or the handle to
%      the existing singleton*.
%
%      FULANGHEFEIYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FULANGHEFEIYANSHE.M with the given input arguments.
%
%      FULANGHEFEIYANSHE('Property','Value',...) creates a new FULANGHEFEIYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FuLangHeFeiYanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FuLangHeFeiYanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FuLangHeFeiYanShe

% Last Modified by GUIDE v2.5 16-Mar-2024 08:48:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FuLangHeFeiYanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @FuLangHeFeiYanShe_OutputFcn, ...
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


% --- Executes just before FuLangHeFeiYanShe is made visible.
function FuLangHeFeiYanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FuLangHeFeiYanShe (see VARARGIN)

% Choose default command line output for FuLangHeFeiYanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('夫琅和费衍射原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BCHEdit,'enable','off');%设置控件为灰色
set(handles.BCHSlider,'enable','off');
set(handles.CHCEdit,'enable','off');
set(handles.CHCSlider,'enable','off');
set(handles.GCMCHCEdit,'enable','off');
set(handles.GCMCHCSlider,'enable','off');
set(handles.YSJLEdit,'enable','off');
set(handles.YSJLSlider,'enable','off');
set(handles.QKPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FuLangHeFeiYanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FuLangHeFeiYanShe_OutputFcn(hObject, eventdata, handles) 
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



function YSJLEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YSJLEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YSJLEdit as text
%        str2double(get(hObject,'String')) returns contents of YSJLEdit as a double
var = str2double(get(handles.YSJLEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function YSJLEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YSJLEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function YSJLSlider_Callback(hObject, eventdata, handles)
% hObject    handle to YSJLSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.YSJLSlider,'Value');%获取实验中衍射距离滑动条的值
set(handles.YSJLEdit,'String',num2str(var));%将滑动条的值(衍射距离)转换成字符串然后赋给观察面尺寸文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    %仿真矩形孔光澜的夫琅禾费衍射
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，矩形孔光澜
    rr=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度)
    U0(floor(r/2-rr):floor(r/2+rr-1),floor(c/2-rr):floor(c/2+rr-1))=1; %生成图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示矩形孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/20]),colormap(gray)%显示矩形孔光澜的夫琅禾费衍射图像
elseif(var1 == 2)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，圆孔光澜
    dyuankong=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度);%圆孔直径,单位:像素
    x0=linspace(-c/2+1,c/2,c);%衍射屏列上的坐标网格
    y0=linspace(-r/2+1,r/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    uyuankong=(x0-x0(r/2,c/2)).^2+(y0-y0(r/2,c/2)).^2;%衍射屏上各点到中心点坐标的距离
    U0(uyuankong<(dyuankong/2).^2)=1;%生成衍射屏面的圆孔图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示圆孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/30]),colormap(gray)%显示圆孔光澜的夫琅禾费衍射图像
else
    try %对异常作出响应
        set(handles.CHCEdit,'enable','off');
        set(handles.CHCSlider,'enable','off');
        set(handles.CHCEdit,'string','无');
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        U0=zeros(3*size(ab,1),3*size(ab,1));%生成汉字形光澜图像
        U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);
        lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
        k=2*pi/lamda;%波数
        d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
        L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
        x=linspace(-L/2,L/2,r);
        y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
        Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
        Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
        axes(handles.axes2);%调用坐标
        imshow(U0,[])%显示任意图形光澜图像
        axes(handles.axes3);%调用坐标
        imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
    catch
            errordlg('没有导入衍射屏或衍射屏较大，请您重新导入衍射屏','警告');%操作不合理，报错
            return;
    end
end

% --- Executes during object creation, after setting all properties.
function YSJLSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YSJLSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in JXKPushbutton.
function JXKPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to JXKPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BCHEdit,'enable','on');%设置控件为灰色
set(handles.BCHSlider,'enable','on');
set(handles.GCMCHCEdit,'enable','on');
set(handles.GCMCHCSlider,'enable','on');
set(handles.YSJLEdit,'enable','on');
set(handles.YSJLSlider,'enable','on');
set(handles.QKPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    if(get(handles.CHCEdit,'string') == '无')
        set(handles.CHCEdit,'string','36');
    end
    %仿真矩形孔光澜的夫琅禾费衍射
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，矩形孔光澜
    rr=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度)
    U0(floor(r/2-rr):floor(r/2+rr-1),floor(c/2-rr):floor(c/2+rr-1))=1; %生成图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示矩形孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/20]),colormap(gray)%显示矩形孔光澜的夫琅禾费衍射图像
elseif(var1 == 2)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    if(get(handles.CHCEdit,'string') == '无')
        set(handles.CHCEdit,'string','36');
    end
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，圆孔光澜
    dyuankong=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度);%圆孔直径,单位:像素
    x0=linspace(-c/2+1,c/2,c);%衍射屏列上的坐标网格
    y0=linspace(-r/2+1,r/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    uyuankong=(x0-x0(r/2,c/2)).^2+(y0-y0(r/2,c/2)).^2;%衍射屏上各点到中心点坐标的距离
    U0(uyuankong<(dyuankong/2).^2)=1;%生成衍射屏面的圆孔图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示圆孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/30]),colormap(gray)%显示圆孔光澜的夫琅禾费衍射图像
else
    try %对异常作出响应
        set(handles.CHCEdit,'enable','off');
        set(handles.CHCSlider,'enable','off');
        set(handles.CHCEdit,'string','无');
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        U0=zeros(3*size(ab,1),3*size(ab,1));%生成汉字形光澜图像
        U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);
        lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
        k=2*pi/lamda;%波数
        d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
        L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
        x=linspace(-L/2,L/2,r);
        y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
        Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
        Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
        axes(handles.axes2);%调用坐标
        imshow(U0,[])%显示任意图形光澜图像
        axes(handles.axes3);%调用坐标
        imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
    catch
            errordlg('没有导入衍射屏或衍射屏较大，请您重新导入衍射屏','警告');%操作不合理，报错
            return;
    end
end

% --- Executes on button press in YKPushbutton.
function YKPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to YKPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%仿真圆孔光澜的夫琅禾费衍射
r=512;
c=r; 
U0=zeros(r,c);%预设衍射图像，圆孔光澜
dyuankong=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度);%圆孔直径,单位:像素
x0=linspace(-c/2+1,c/2,c);%衍射屏列上的坐标网格
y0=linspace(-r/2+1,r/2,r);%衍射屏行上的坐标网格
[x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
uyuankong=(x0-x0(r/2,c/2)).^2+(y0-y0(r/2,c/2)).^2;%衍射屏上各点到中心点坐标的距离
U0(uyuankong<(dyuankong/2).^2)=1;%生成衍射屏面的圆孔图像
lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
k=2*pi/lamda;%波数
d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
x=linspace(-L/2,L/2,r);
y=x;%构建x坐标和y坐标
[x,y]=meshgrid(x,y);%构建二维坐标网格
F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
axes(handles.axes2);%调用坐标
imshow(U0,[])%显示圆孔光澜图像
axes(handles.axes3);%调用坐标
imshow(I,[0,max(max(I))/30]),colormap(gray)%显示圆孔光澜的夫琅禾费衍射图像

% --- Executes on button press in QKPushbutton.
function QKPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QKPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域

% --- Executes on button press in RYPushbutton.
function RYPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to RYPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    aa=imread([FilePath,FileName]);%读取汉字形光澜图像
    ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
    ab=ab./max(ab(:));%生成汉字形光澜图像
    check=get(handles.checkbox1,'value');
    if isequal(check,1)
        ab=1-ab;%生成汉字形光澜图像
    end
    U0=zeros(3*size(ab,1),3*size(ab,1));%生成汉字形光澜图像
    U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
    r=size(U0,1);
    c=size(U0,2);
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示任意图形光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
catch
    %仿真任意图形光澜的夫琅禾费衍射
    aa=imread('汉字形光澜.PNG');%读取汉字形光澜图像
    ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
    ab=ab./max(ab(:));%生成汉字形光澜图像
    ab=1-ab;%生成汉字形光澜图像
    U0=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
    U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
    r=size(U0,1);
    c=size(U0,2);
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示任意图形光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
end


function CHCEdit_Callback(hObject, eventdata, handles)
% hObject    handle to CHCEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CHCEdit as text
%        str2double(get(hObject,'String')) returns contents of CHCEdit as a double
var = str2double(get(handles.CHCEdit,'string'));
if((var<0) || ((0<mod(var,2)) && (mod(var,2)<1)))
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function CHCEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CHCEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function CHCSlider_Callback(hObject, eventdata, handles)
% hObject    handle to CHCSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.CHCSlider,'Value');%获取实验中圆孔直径|矩形孔边长滑动条的值
set(handles.CHCEdit,'String',num2str(var));%将滑动条的值(圆孔直径|矩形孔边长)转换成字符串然后赋给观察面尺寸文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    %仿真矩形孔光澜的夫琅禾费衍射
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，矩形孔光澜
    rr=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度)
    U0(floor(r/2-rr):floor(r/2+rr-1),floor(c/2-rr):floor(c/2+rr-1))=1; %生成图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示矩形孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/20]),colormap(gray)%显示矩形孔光澜的夫琅禾费衍射图像
elseif(var1 == 2)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，圆孔光澜
    dyuankong=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度);%圆孔直径,单位:像素
    x0=linspace(-c/2+1,c/2,c);%衍射屏列上的坐标网格
    y0=linspace(-r/2+1,r/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    uyuankong=(x0-x0(r/2,c/2)).^2+(y0-y0(r/2,c/2)).^2;%衍射屏上各点到中心点坐标的距离
    U0(uyuankong<(dyuankong/2).^2)=1;%生成衍射屏面的圆孔图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示圆孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/30]),colormap(gray)%显示圆孔光澜的夫琅禾费衍射图像
else
    try %对异常作出响应
        set(handles.CHCEdit,'enable','off');
        set(handles.CHCSlider,'enable','off');
        set(handles.CHCEdit,'string','无');
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        U0=zeros(3*size(ab,1),3*size(ab,1));%生成汉字形光澜图像
        U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);
        lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
        k=2*pi/lamda;%波数
        d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
        L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
        x=linspace(-L/2,L/2,r);
        y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
        Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
        Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
        axes(handles.axes2);%调用坐标
        imshow(U0,[])%显示任意图形光澜图像
        axes(handles.axes3);%调用坐标
        imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
    catch
            errordlg('没有导入衍射屏或衍射屏较大，请您重新导入衍射屏','警告');%操作不合理，报错
            return;
    end
end

% --- Executes during object creation, after setting all properties.
function CHCSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CHCSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function GCMCHCEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GCMCHCEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GCMCHCEdit as text
%        str2double(get(hObject,'String')) returns contents of GCMCHCEdit as a double
var = str2double(get(handles.GCMCHCEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GCMCHCEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GCMCHCEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GCMCHCSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GCMCHCSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GCMCHCSlider,'Value');%获取实验中观察面尺寸滑动条的值
set(handles.GCMCHCEdit,'String',num2str(var));%将滑动条的值(观察面的尺寸)转换成字符串然后赋给观察面尺寸文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    %仿真矩形孔光澜的夫琅禾费衍射
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，矩形孔光澜
    rr=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度)
    U0(floor(r/2-rr):floor(r/2+rr-1),floor(c/2-rr):floor(c/2+rr-1))=1; %生成图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示矩形孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/20]),colormap(gray)%显示矩形孔光澜的夫琅禾费衍射图像
elseif(var1 == 2)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，圆孔光澜
    dyuankong=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度);%圆孔直径,单位:像素
    x0=linspace(-c/2+1,c/2,c);%衍射屏列上的坐标网格
    y0=linspace(-r/2+1,r/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    uyuankong=(x0-x0(r/2,c/2)).^2+(y0-y0(r/2,c/2)).^2;%衍射屏上各点到中心点坐标的距离
    U0(uyuankong<(dyuankong/2).^2)=1;%生成衍射屏面的圆孔图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示圆孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/30]),colormap(gray)%显示圆孔光澜的夫琅禾费衍射图像
else
    try %对异常作出响应
        set(handles.CHCEdit,'enable','off');
        set(handles.CHCSlider,'enable','off');
        set(handles.CHCEdit,'string','无');
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        U0=zeros(3*size(ab,1),3*size(ab,1));%生成汉字形光澜图像
        U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);
        lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
        k=2*pi/lamda;%波数
        d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
        L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
        x=linspace(-L/2,L/2,r);
        y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
        Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
        Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
        axes(handles.axes2);%调用坐标
        imshow(U0,[])%显示任意图形光澜图像
        axes(handles.axes3);%调用坐标
        imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
    catch
            errordlg('没有导入衍射屏或衍射屏较大，请您重新导入衍射屏','警告');%操作不合理，报错
            return;
    end
end

% --- Executes during object creation, after setting all properties.
function GCMCHCSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GCMCHCSlider (see GCBO)
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
var=get(handles.BCHSlider,'Value');%获取实验中真空中的波长滑动条的值
set(handles.BCHEdit,'String',num2str(var));%将滑动条的值(真空中的波长)转换成字符串然后赋给观察面尺寸文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    %仿真矩形孔光澜的夫琅禾费衍射
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，矩形孔光澜
    rr=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度)
    U0(floor(r/2-rr):floor(r/2+rr-1),floor(c/2-rr):floor(c/2+rr-1))=1; %生成图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示矩形孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/20]),colormap(gray)%显示矩形孔光澜的夫琅禾费衍射图像
elseif(var1 == 2)
    set(handles.CHCEdit,'enable','on');
    set(handles.CHCSlider,'enable','on');
    r=512;
    c=r; 
    U0=zeros(r,c);%预设衍射图像，圆孔光澜
    dyuankong=str2double(get(handles.CHCEdit,'string'));%获取介质折射率(屈光度);%圆孔直径,单位:像素
    x0=linspace(-c/2+1,c/2,c);%衍射屏列上的坐标网格
    y0=linspace(-r/2+1,r/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    uyuankong=(x0-x0(r/2,c/2)).^2+(y0-y0(r/2,c/2)).^2;%衍射屏上各点到中心点坐标的距离
    U0(uyuankong<(dyuankong/2).^2)=1;%生成衍射屏面的圆孔图像
    lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
    k=2*pi/lamda;%波数
    d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
    L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
    x=linspace(-L/2,L/2,r);
    y=x;%构建x坐标和y坐标
    [x,y]=meshgrid(x,y);%构建二维坐标网格
    F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
    Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
    Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
    I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
    axes(handles.axes2);%调用坐标
    imshow(U0,[])%显示圆孔光澜图像
    axes(handles.axes3);%调用坐标
    imshow(I,[0,max(max(I))/30]),colormap(gray)%显示圆孔光澜的夫琅禾费衍射图像
else
    try %对异常作出响应
        set(handles.CHCEdit,'enable','off');
        set(handles.CHCSlider,'enable','off');
        set(handles.CHCEdit,'string','无');
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        U0=zeros(3*size(ab,1),3*size(ab,1));%生成汉字形光澜图像
        U0(floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,1)-1,floor(size(U0,1)/4):floor(size(U0,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);
        lamda=(str2double(get(handles.BCHEdit,'string')))*1e-9;%波长，单位：米
        k=2*pi/lamda;%波数
        d=str2double(get(handles.YSJLEdit,'string'));%屏到衍射面的距离,单位:米
        L=(str2double(get(handles.GCMCHCEdit,'string')))^(-3);%计算观察面尺寸大小                     
        x=linspace(-L/2,L/2,r);
        y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i*k*d)/(1i*lamda*d)*exp(1i*k/2/d*(x.^2+y.^2)); %赋值exp(ikd)/(iλd)exp[ik(x2+y2)/2d]
        Ff=fftshift(fft2(U0));%完成U0(x0,y0,0)的傅里叶变换
        Fuf=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=Fuf.*conj(Fuf);%计算观察屏上的光强分布
        axes(handles.axes2);%调用坐标
        imshow(U0,[])%显示任意图形光澜图像
        axes(handles.axes3);%调用坐标
        imshow(I,[0,max(max(I))/100]),colormap(gray)%显示任意图形光澜的夫琅禾费衍射图像
    catch
            errordlg('没有导入衍射屏或衍射屏较大，请您重新导入衍射屏','警告');%操作不合理，报错
            return;
    end
end

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
handles2= FuLangHeFeiYanSheYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --- Executes on button press in DaoRuPushbutton.
function DaoRuPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DaoRuPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName , FilePath]=uigetfile({'*.jpg';'*.png';'*.bmp';'*.*'},'文件');%打开文件夹
if isequal(FileName ,0) || isequal(FilePath,0)%判断是否选择了文件
    errordlg('没有选择相关的文件，请您重新操作','警告');%没选择文件，则报错
    return;
end
handles.FileName=FileName;
handles.FilePath=FilePath;
guidata(hObject, handles)%函数之间传递参数


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


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
