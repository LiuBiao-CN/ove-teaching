function varargout = RenYuTuXingYanShe(varargin)
% RENYUTUXINGYANSHE MATLAB code for RenYuTuXingYanShe.fig
%      RENYUTUXINGYANSHE, by itself, creates a new RENYUTUXINGYANSHE or raises the existing
%      singleton*.
%
%      H = RENYUTUXINGYANSHE returns the handle to a new RENYUTUXINGYANSHE or the handle to
%      the existing singleton*.
%
%      RENYUTUXINGYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RENYUTUXINGYANSHE.M with the given input arguments.
%
%      RENYUTUXINGYANSHE('Property','Value',...) creates a new RENYUTUXINGYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RenYuTuXingYanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RenYuTuXingYanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RenYuTuXingYanShe

% Last Modified by GUIDE v2.5 14-Mar-2024 20:32:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RenYuTuXingYanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @RenYuTuXingYanShe_OutputFcn, ...
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


% --- Executes just before RenYuTuXingYanShe is made visible.
function RenYuTuXingYanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RenYuTuXingYanShe (see VARARGIN)

% Choose default command line output for RenYuTuXingYanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('菲涅尔衍射原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.XianShuJianJvEdit,'enable','off');
set(handles.XianShuJianJvSlider,'enable','off');
set(handles.pushbutton5,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RenYuTuXingYanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RenYuTuXingYanShe_OutputFcn(hObject, eventdata, handles) 
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

% --- Executes on button press in SFFTPushbutton.
function SFFTPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to SFFTPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.XianShuJianJvEdit,'enable','on');
set(handles.XianShuJianJvSlider,'enable','on');
set(handles.pushbutton5,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜互补图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，米
        k=2*pi/lamda;%波数
        d=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%观察屏到衍射面的距离,米
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=size(ac,1)*dd;%衍射面的尺寸,米
        Lx0=size(ac,1)*lamda*d/L0;%观察屏面的尺寸
        x0=linspace(-L0/2,L0/2,size(ac,1));y0=linspace(-L0/2,L0/2,size(ac,1));%构建x0坐标和y0坐标
        [x0,y0]=meshgrid(x0,y0);%构建衍射面的二维坐标网格
        x=linspace(-Lx0/2,Lx0/2,size(ac,1));y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i.*k.*d)./(1i.*lamda.*d).*exp(1i.*k.*(x.^2+y.^2)./.2./d); %赋值exp(jkd)/(jλd)exp[jk(x2+y2)/2/d]
        F=exp(1i.*k./.2./d.*(x0.^2+y0.^2));%赋值exp[ik(x0^2+y0^2)/2/d]
        U0=ac.*F;%赋值U0(x0,y0)exp[ik(x02+y02)/2d]
        Ff=fftshift(fft2(U0)).*L0./size(ac,1).*L0./size(ac,2);%完成U0(x0,y0)exp[ik(x0^2+y0^2)/2/d]的傅里叶变换
        U=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=U.*conj(U);%计算观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(ac,[0,1]),shading interp,colormap(gray)%显示汉字形光澜图像
        %mesh(abs(U)),shading interp,colormap(gray)%观察屏(x,y,z)上干涉光场的复振
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(I(:))]),shading interp,colormap(gray)%显示汉字形光澜的衍射光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
elseif(var1 == 2)
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%波长，波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        u=linspace(-1.*c./2./L0,1.*c./2./L0,c);%给出频域坐标u
        v=linspace(-1.*r./2./L0,1.*r./2./L0,r);%给出频域坐标v
        [u,v]=meshgrid(u,v);%频域的二维坐标网格
        Huv=exp(1i*k*z0.*(1-lamda.*lamda.*(u.^2+v.^2)./2));%菲涅耳衍射传递函数
        fa=fftshift(fft2(U0));%衍射圆孔的傅里叶变换频谱
        Fuf=fa.*Huv;%滤波
        U=ifft2(Fuf);%空域观察屏上的光波场分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[0,max(max(II))]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强分布
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
else
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长
        k=2*pi/lamda;%波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        x0=linspace(-L0/2,L0/2,c);%衍射屏列上的坐标网格
        y0=linspace(-L0/2,L0/2,r);%衍射屏行上的坐标网格
        [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        F0=exp(1i.*k.*z0)/(1i.*lamda.*z0);
        F1=exp(1i.*k/.2./z0.*(x0.^2+y0.^2));%啁啾函数
        FU=fft2(U0);%衍射圆孔的傅里叶变换频谱
        fF=fft2(F1);%啁啾函数的频谱
        Fuf=FU.*fF*L0/r*L0/c;%在观察屏上的傅里叶变换频谱
        U=F0.*fftshift(ifft2(Fuf));%空域观察屏上的分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
end


% --- Executes on button press in DFFTPushbutton.
function DFFTPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DFFTPushbutton (see GCBO)
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
    ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
    ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
    U0=ac;%生成汉字形光澜图像
    r=size(U0,1);
    c=size(U0,2);%获取图像的大小
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%波长，波数
    dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
    L0=r*dd;%给出衍射面的尺寸,单位:米
    z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
    u=linspace(-1.*c./2./L0,1.*c./2./L0,c);%给出频域坐标u
    v=linspace(-1.*r./2./L0,1.*r./2./L0,r);%给出频域坐标v
    [u,v]=meshgrid(u,v);%频域的二维坐标网格
    Huv=exp(1i*k*z0.*(1-lamda.*lamda.*(u.^2+v.^2)./2));%菲涅耳衍射传递函数
    fa=fftshift(fft2(U0));%衍射圆孔的傅里叶变换频谱
    Fuf=fa.*Huv;%滤波
    U=ifft2(Fuf);%空域观察屏上的光波场分布函数
    I=U.*conj(U);%在观察屏上的光强分布
    axes(handles.axes2);%调用干涉图样坐标
    imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
    UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
    II=UU.*conj(UU);%在观察屏上的数字全息光强分布
    %imshow(II,[0,max(max(II))]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强分布
catch
    aa=imread('汉字形光澜.PNG');%读取汉字形光澜图像
    ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
    ab=ab./max(ab(:));%生成汉字形光澜图像
    ab=1-ab;%生成汉字形光澜图像
    ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
    ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
    U0=ac;%生成汉字形光澜图像
    r=size(U0,1);
    c=size(U0,2);%获取图像的大小
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%波长，波数
    dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
    L0=r*dd;%给出衍射面的尺寸,单位:米
    z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
    u=linspace(-1.*c./2./L0,1.*c./2./L0,c);%给出频域坐标u
    v=linspace(-1.*r./2./L0,1.*r./2./L0,r);%给出频域坐标v
    [u,v]=meshgrid(u,v);%频域的二维坐标网格
    Huv=exp(1i*k*z0.*(1-lamda.*lamda.*(u.^2+v.^2)./2));%菲涅耳衍射传递函数
    fa=fftshift(fft2(U0));%衍射圆孔的傅里叶变换频谱
    Fuf=fa.*Huv;%滤波
    U=ifft2(Fuf);%空域观察屏上的光波场分布函数
    I=U.*conj(U);%在观察屏上的光强分布
    axes(handles.axes2);%调用干涉图样坐标
    imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
    UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
    II=UU.*conj(UU);%在观察屏上的数字全息光强分布
    %imshow(II,[0,max(max(II))]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强分布
    imshow(I,[0,max(I(:))]),shading interp,colormap(gray)%显示汉字形光澜的衍射光强
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域

% --- Executes on button press in TFFTPushbutton.
function TFFTPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to TFFTPushbutton (see GCBO)
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
    ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
    ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
    U0=ac;%生成汉字形光澜图像
    r=size(U0,1);
    c=size(U0,2);%获取图像的大小
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长
    k=2*pi/lamda;%波数
    dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
    L0=r*dd;%给出衍射面的尺寸,单位:米
    x0=linspace(-L0/2,L0/2,c);%衍射屏列上的坐标网格
    y0=linspace(-L0/2,L0/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
    F0=exp(1i.*k.*z0)/(1i.*lamda.*z0);
    F1=exp(1i.*k/.2./z0.*(x0.^2+y0.^2));%啁啾函数
    FU=fft2(U0);%衍射圆孔的傅里叶变换频谱
    fF=fft2(F1);%啁啾函数的频谱
    Fuf=FU.*fF*L0/r*L0/c;%在观察屏上的傅里叶变换频谱
    U=F0.*fftshift(ifft2(Fuf));%空域观察屏上的分布函数
    I=U.*conj(U);%在观察屏上的光强分布
    axes(handles.axes2);%调用干涉图样坐标
    imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
    UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
    II=UU.*conj(UU);%在观察屏上的数字全息光强分布
    %imshow(II,[]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强
catch
    aa=imread('汉字形光澜.PNG');%读取汉字形光澜图像
    ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
    ab=ab./max(ab(:));%生成汉字形光澜图像
    ab=1-ab;%生成汉字形光澜图像
    ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
    ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
    U0=ac;%生成汉字形光澜图像
    r=size(U0,1);
    c=size(U0,2);%获取图像的大小
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长
    k=2*pi/lamda;%波数
    dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
    L0=r*dd;%给出衍射面的尺寸,单位:米
    x0=linspace(-L0/2,L0/2,c);%衍射屏列上的坐标网格
    y0=linspace(-L0/2,L0/2,r);%衍射屏行上的坐标网格
    [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
    z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
    F0=exp(1i.*k.*z0)/(1i.*lamda.*z0);
    F1=exp(1i.*k/.2./z0.*(x0.^2+y0.^2));%啁啾函数
    FU=fft2(U0);%衍射圆孔的傅里叶变换频谱
    fF=fft2(F1);%啁啾函数的频谱
    Fuf=FU.*fF*L0/r*L0/c;%在观察屏上的傅里叶变换频谱
    U=F0.*fftshift(ifft2(Fuf));%空域观察屏上的分布函数
    I=U.*conj(U);%在观察屏上的光强分布
    axes(handles.axes2);%调用干涉图样坐标
    imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
    axes(handles.axes3);%调用干涉图样坐标
    imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
    UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
    II=UU.*conj(UU);%在观察屏上的数字全息光强分布
    %imshow(II,[]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强
    imshow(I,[0,max(I(:))]),shading interp,colormap(gray)%显示汉字形光澜的衍射光强
end


% --- Executes on button press in DaoRuTuXing.
function DaoRuTuXing_Callback(hObject, eventdata, handles)
% hObject    handle to DaoRuTuXing (see GCBO)
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


function YuanSheJvLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YuanSheJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YuanSheJvLiEdit as text
%        str2double(get(hObject,'String')) returns contents of YuanSheJvLiEdit as a double
var = str2double(get(handles.YuanSheJvLiEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function YuanSheJvLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YuanSheJvLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function YuanSheJvLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to YuanSheJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.YuanSheJvLiSlider,'Value');%获取实验中衍射距离滑动条的值
set(handles.YuanSheJvLiEdit,'String',num2str(var));%将滑动条的值(衍射距离)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜互补图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，米
        k=2*pi/lamda;%波数
        d=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%观察屏到衍射面的距离,米
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=size(ac,1)*dd;%衍射面的尺寸,米
        Lx0=size(ac,1)*lamda*d/L0;%观察屏面的尺寸
        x0=linspace(-L0/2,L0/2,size(ac,1));y0=linspace(-L0/2,L0/2,size(ac,1));%构建x0坐标和y0坐标
        [x0,y0]=meshgrid(x0,y0);%构建衍射面的二维坐标网格
        x=linspace(-Lx0/2,Lx0/2,size(ac,1));y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i.*k.*d)./(1i.*lamda.*d).*exp(1i.*k.*(x.^2+y.^2)./.2./d); %赋值exp(jkd)/(jλd)exp[jk(x2+y2)/2/d]
        F=exp(1i.*k./.2./d.*(x0.^2+y0.^2));%赋值exp[ik(x0^2+y0^2)/2/d]
        U0=ac.*F;%赋值U0(x0,y0)exp[ik(x02+y02)/2d]
        Ff=fftshift(fft2(U0)).*L0./size(ac,1).*L0./size(ac,2);%完成U0(x0,y0)exp[ik(x0^2+y0^2)/2/d]的傅里叶变换
        U=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=U.*conj(U);%计算观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(ac,[0,1]),shading interp,colormap(gray)%显示汉字形光澜图像
        %mesh(abs(U)),shading interp,colormap(gray)%观察屏(x,y,z)上干涉光场的复振
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(I(:))]),shading interp,colormap(gray)%显示汉字形光澜的衍射光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
elseif(var1 == 2)
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%波长，波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        u=linspace(-1.*c./2./L0,1.*c./2./L0,c);%给出频域坐标u
        v=linspace(-1.*r./2./L0,1.*r./2./L0,r);%给出频域坐标v
        [u,v]=meshgrid(u,v);%频域的二维坐标网格
        Huv=exp(1i*k*z0.*(1-lamda.*lamda.*(u.^2+v.^2)./2));%菲涅耳衍射传递函数
        fa=fftshift(fft2(U0));%衍射圆孔的傅里叶变换频谱
        Fuf=fa.*Huv;%滤波
        U=ifft2(Fuf);%空域观察屏上的光波场分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[0,max(max(II))]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强分布
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
else
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长
        k=2*pi/lamda;%波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        x0=linspace(-L0/2,L0/2,c);%衍射屏列上的坐标网格
        y0=linspace(-L0/2,L0/2,r);%衍射屏行上的坐标网格
        [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        F0=exp(1i.*k.*z0)/(1i.*lamda.*z0);
        F1=exp(1i.*k/.2./z0.*(x0.^2+y0.^2));%啁啾函数
        FU=fft2(U0);%衍射圆孔的傅里叶变换频谱
        fF=fft2(F1);%啁啾函数的频谱
        Fuf=FU.*fF*L0/r*L0/c;%在观察屏上的傅里叶变换频谱
        U=F0.*fftshift(ifft2(Fuf));%空域观察屏上的分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
end

% --- Executes during object creation, after setting all properties.
function YuanSheJvLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YuanSheJvLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function XianShuJianJvEdit_Callback(hObject, eventdata, handles)
% hObject    handle to XianShuJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XianShuJianJvEdit as text
%        str2double(get(hObject,'String')) returns contents of XianShuJianJvEdit as a double
var = str2double(get(handles.XianShuJianJvEdit,'string'));
if(var<=0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function XianShuJianJvEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XianShuJianJvEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function XianShuJianJvSlider_Callback(hObject, eventdata, handles)
% hObject    handle to XianShuJianJvSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.XianShuJianJvSlider,'Value');%获取实验中像素间距滑动条的值
set(handles.XianShuJianJvEdit,'String',num2str(var));%将滑动条的值(像素间距)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜互补图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，米
        k=2*pi/lamda;%波数
        d=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%观察屏到衍射面的距离,米
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=size(ac,1)*dd;%衍射面的尺寸,米
        Lx0=size(ac,1)*lamda*d/L0;%观察屏面的尺寸
        x0=linspace(-L0/2,L0/2,size(ac,1));y0=linspace(-L0/2,L0/2,size(ac,1));%构建x0坐标和y0坐标
        [x0,y0]=meshgrid(x0,y0);%构建衍射面的二维坐标网格
        x=linspace(-Lx0/2,Lx0/2,size(ac,1));y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i.*k.*d)./(1i.*lamda.*d).*exp(1i.*k.*(x.^2+y.^2)./.2./d); %赋值exp(jkd)/(jλd)exp[jk(x2+y2)/2/d]
        F=exp(1i.*k./.2./d.*(x0.^2+y0.^2));%赋值exp[ik(x0^2+y0^2)/2/d]
        U0=ac.*F;%赋值U0(x0,y0)exp[ik(x02+y02)/2d]
        Ff=fftshift(fft2(U0)).*L0./size(ac,1).*L0./size(ac,2);%完成U0(x0,y0)exp[ik(x0^2+y0^2)/2/d]的傅里叶变换
        U=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=U.*conj(U);%计算观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(ac,[0,1]),shading interp,colormap(gray)%显示汉字形光澜图像
        %mesh(abs(U)),shading interp,colormap(gray)%观察屏(x,y,z)上干涉光场的复振
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(I(:))]),shading interp,colormap(gray)%显示汉字形光澜的衍射光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
elseif(var1 == 2)
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%波长，波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        u=linspace(-1.*c./2./L0,1.*c./2./L0,c);%给出频域坐标u
        v=linspace(-1.*r./2./L0,1.*r./2./L0,r);%给出频域坐标v
        [u,v]=meshgrid(u,v);%频域的二维坐标网格
        Huv=exp(1i*k*z0.*(1-lamda.*lamda.*(u.^2+v.^2)./2));%菲涅耳衍射传递函数
        fa=fftshift(fft2(U0));%衍射圆孔的傅里叶变换频谱
        Fuf=fa.*Huv;%滤波
        U=ifft2(Fuf);%空域观察屏上的光波场分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[0,max(max(II))]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强分布
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
else
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长
        k=2*pi/lamda;%波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        x0=linspace(-L0/2,L0/2,c);%衍射屏列上的坐标网格
        y0=linspace(-L0/2,L0/2,r);%衍射屏行上的坐标网格
        [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        F0=exp(1i.*k.*z0)/(1i.*lamda.*z0);
        F1=exp(1i.*k/.2./z0.*(x0.^2+y0.^2));%啁啾函数
        FU=fft2(U0);%衍射圆孔的傅里叶变换频谱
        fF=fft2(F1);%啁啾函数的频谱
        Fuf=FU.*fF*L0/r*L0/c;%在观察屏上的傅里叶变换频谱
        U=F0.*fftshift(ifft2(Fuf));%空域观察屏上的分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
end

% --- Executes during object creation, after setting all properties.
function XianShuJianJvSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XianShuJianJvSlider (see GCBO)
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
var=get(handles.BoChangSlider,'Value');%获取实验中入射波长滑动条的值
set(handles.BoChangEdit,'String',num2str(var));%将滑动条的值(入射波长)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜互补图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长，米
        k=2*pi/lamda;%波数
        d=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%观察屏到衍射面的距离,米
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=size(ac,1)*dd;%衍射面的尺寸,米
        Lx0=size(ac,1)*lamda*d/L0;%观察屏面的尺寸
        x0=linspace(-L0/2,L0/2,size(ac,1));y0=linspace(-L0/2,L0/2,size(ac,1));%构建x0坐标和y0坐标
        [x0,y0]=meshgrid(x0,y0);%构建衍射面的二维坐标网格
        x=linspace(-Lx0/2,Lx0/2,size(ac,1));y=x;%构建x坐标和y坐标
        [x,y]=meshgrid(x,y);%构建二维坐标网格
        F0=exp(1i.*k.*d)./(1i.*lamda.*d).*exp(1i.*k.*(x.^2+y.^2)./.2./d); %赋值exp(jkd)/(jλd)exp[jk(x2+y2)/2/d]
        F=exp(1i.*k./.2./d.*(x0.^2+y0.^2));%赋值exp[ik(x0^2+y0^2)/2/d]
        U0=ac.*F;%赋值U0(x0,y0)exp[ik(x02+y02)/2d]
        Ff=fftshift(fft2(U0)).*L0./size(ac,1).*L0./size(ac,2);%完成U0(x0,y0)exp[ik(x0^2+y0^2)/2/d]的傅里叶变换
        U=F0.*Ff;%得到观察屏上的光场分布U(x,y)
        I=U.*conj(U);%计算观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(ac,[0,1]),shading interp,colormap(gray)%显示汉字形光澜图像
        %mesh(abs(U)),shading interp,colormap(gray)%观察屏(x,y,z)上干涉光场的复振
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(I(:))]),shading interp,colormap(gray)%显示汉字形光澜的衍射光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
elseif(var1 == 2)
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%波长，波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        u=linspace(-1.*c./2./L0,1.*c./2./L0,c);%给出频域坐标u
        v=linspace(-1.*r./2./L0,1.*r./2./L0,r);%给出频域坐标v
        [u,v]=meshgrid(u,v);%频域的二维坐标网格
        Huv=exp(1i*k*z0.*(1-lamda.*lamda.*(u.^2+v.^2)./2));%菲涅耳衍射传递函数
        fa=fftshift(fft2(U0));%衍射圆孔的傅里叶变换频谱
        Fuf=fa.*Huv;%滤波
        U=ifft2(Fuf);%空域观察屏上的光波场分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[0,max(max(II))]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强分布
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
else
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
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;
        U0=ac;%生成汉字形光澜图像
        r=size(U0,1);
        c=size(U0,2);%获取图像的大小
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%波长
        k=2*pi/lamda;%波数
        dd=(str2double(get(handles.XianShuJianJvEdit,'string')))*10^(-3);%像素间距,单位:米
        L0=r*dd;%给出衍射面的尺寸,单位:米
        x0=linspace(-L0/2,L0/2,c);%衍射屏列上的坐标网格
        y0=linspace(-L0/2,L0/2,r);%衍射屏行上的坐标网格
        [x0,y0]=meshgrid(x0,y0);%衍射屏二维坐标网格
        z0=(str2double(get(handles.YuanSheJvLiEdit,'string')))*10^(-3);%衍射距离,单位:米
        F0=exp(1i.*k.*z0)/(1i.*lamda.*z0);
        F1=exp(1i.*k/.2./z0.*(x0.^2+y0.^2));%啁啾函数
        FU=fft2(U0);%衍射圆孔的傅里叶变换频谱
        fF=fft2(F1);%啁啾函数的频谱
        Fuf=FU.*fF*L0/r*L0/c;%在观察屏上的傅里叶变换频谱
        U=F0.*fftshift(ifft2(Fuf));%空域观察屏上的分布函数
        I=U.*conj(U);%在观察屏上的光强分布
        axes(handles.axes2);%调用干涉图样坐标
        imshow(U0),shading interp,colormap(gray)%圆孔衍射屏
        axes(handles.axes3);%调用干涉图样坐标
        imshow(I,[0,max(max(I))]),shading interp,colormap(gray)%显示在观察屏上的光强分布
        UU=U+1;%圆孔衍射光波场与垂直照射平面光波场的干涉
        II=UU.*conj(UU);%在观察屏上的数字全息光强分布
        %imshow(II,[]),shading interp,colormap(gray)%显示在观察屏上的数字全息光强
    catch
        errordlg('没有导入衍射屏或衍射屏太大，请您重新导入衍射屏','警告');%操作不合理，报错
        return;
    end
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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


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
handles2= RenYuTuXingYanSheYuanLi;%取得相应的界面对象
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
