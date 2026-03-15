function varargout = TheTaTiaoZhi(varargin)
% THETATIAOZHI MATLAB code for TheTaTiaoZhi.fig
%      THETATIAOZHI, by itself, creates a new THETATIAOZHI or raises the existing
%      singleton*.
%
%      H = THETATIAOZHI returns the handle to a new THETATIAOZHI or the handle to
%      the existing singleton*.
%
%      THETATIAOZHI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THETATIAOZHI.M with the given input arguments.
%
%      THETATIAOZHI('Property','Value',...) creates a new THETATIAOZHI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TheTaTiaoZhi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TheTaTiaoZhi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TheTaTiaoZhi

% Last Modified by GUIDE v2.5 12-Mar-2024 22:55:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TheTaTiaoZhi_OpeningFcn, ...
                   'gui_OutputFcn',  @TheTaTiaoZhi_OutputFcn, ...
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


% --- Executes just before TheTaTiaoZhi is made visible.
function TheTaTiaoZhi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TheTaTiaoZhi (see VARARGIN)

% Choose default command line output for TheTaTiaoZhi
handles.output = hObject;
axes(handles.axes1);
imshow('背景.bmp');%显示图
axes(handles.axes2);
imshow('背景.bmp');%显示图
axes(handles.axes3);
imshow('背景.bmp');%显示图
axes(handles.axes4);
imshow('背景.bmp');%显示图
axes(handles.axes5);
imshow('背景.bmp');%显示图
axes(handles.axes6);
imshow('背景.bmp');%显示图
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
set(handles.QingKongPushbutton,'enable','off');%设置控件为灰色
set(handles.BaoCunPpushbutton,'enable','off');%设置控件为灰色
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TheTaTiaoZhi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TheTaTiaoZhi_OutputFcn(hObject, eventdata, handles) 
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
handles2= XinXiGuangXue;%取得光学仿真信息光学界面对象
handles2=guihandles(handles2);%跳转到光学仿真信息光学界面


% --- Executes on button press in FanZhengPushbutton.
function FanZhengPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FanZhengPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.QingKongPushbutton,'enable','on');%设置控件为灰色
set(handles.BaoCunPpushbutton,'enable','on');%设置控件为灰色
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    U0=imread([FilePath,FileName]);%读取图像
    U01=double(U0(:,:,1));%将图像第一层（红色层）转为双精度
    U02=exp(1i.*U01./255);%生成纯相位物光场且相位值在0-1 rad之间
    [r,c]=size(U02);%读取物面采样数(即大小)
    Fuv=fftshift(fft2(U02));%焦平面上的光场分布
    I=Fuv.*conj(Fuv);%焦面上的光强分布
    U=zeros(r,c,3);%预设θ调制后的图像
    x=0:1:c-1;%坐标值
    y=0:1:r-1;%坐标值
    [x,y]=meshgrid(x,y);%坐标值
    UU=U;%预设θ调制后的复振幅图像
    H=U;%预设多边形滤波器
    axes(handles.axes1);%调用图样坐标
    imshow(U01,[])%显示原图像
    %==========================================================================
    %生成多边形滤波器
    axes(handles.axes2);%调用图样坐标
    for m=1:3%生成多边形滤波器
        %在本文中所提到的度数都是以向右方向为正为基准
        imshow(I,[0,max(I(:))/10000]),colormap(pink)%显示光强分布
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H(:,:,m)=zeros(r,c);%预设滤波器H
        H(:,:,m)=roipoly(H(:,:,m),rr,cc);%生成滤波器H,使选定区域内的值等于1
    end
    %==========================================================================
    %滤波以及计算第二次傅里叶变换后的成像包括复振幅和光强
    Fuv_H1=H(:,:,1).*Fuv;%滤波器滤波
    Uxy1=ifft2(Fuv_H1);%计算通过焦面后的光场到达观察面的光场
    Ixy11=real(Uxy1).*(-1).^(x+y);%滤波后像面上的复振幅
    Ixy1=Uxy1.*conj(Uxy1);%滤波后像面上草坪的光强分布
    Fuv_H2=H(:,:,2).*Fuv;%滤波器滤波
    Uxy2=ifft2(Fuv_H2);%计算通过焦面后的光场到达观察面的光场
    Ixy22=real(Uxy2).*(-1).^(x+y);%滤波后像面上的复振幅
    Ixy2=Uxy2.*conj(Uxy2);%滤波后像面上的光强分布
    Fuv_H3=H(:,:,3).*Fuv;%滤波器滤波
    Uxy3=ifft2(Fuv_H3);%计算通过焦面后的光场到达观察面的光场
    Ixy33=real(Uxy3).*(-1).^(x+y);%滤波后像面上的复振幅
    Ixy3=Uxy3.*conj(Uxy3);%滤波后像面上的光强分布
    %==========================================================================
    %仿真θ调制原始图像后的假彩色编码图包括复振幅和光强
    UU(:,:,1)=Ixy11;%滤波后的复振幅放置于红色层
    UU(:,:,2)=Ixy22;%滤波后的复振幅放置于绿色层
    UU(:,:,3)=Ixy33;%滤波后的复振幅放置于蓝色层
    U(:,:,1)=Ixy1;%滤波后放置于红色层
    U(:,:,2)=Ixy2;%滤波后放置于绿色层
    U(:,:,3)=Ixy3;%滤波后放置于蓝色层
    %==========================================================================
    %显示各种图像
    axes(handles.axes3);%调用图样坐标
    imshow(Ixy1,[]),colormap(gray)%显示滤波后的草坪光强图像
    axes(handles.axes4);%调用图样坐标
    imshow(Ixy2,[]),colormap(gray)%显示滤波后的房屋光强图像
    axes(handles.axes5);%调用图样坐标
    imshow(Ixy3,[]),colormap(gray)%显示滤波后的天空光强图像
    axes(handles.axes6);%调用图样坐标
    imshow(U,[])%显示θ调制原始图像后的假彩色编码图(光强图像)
    % figure,imshow(UU,[])%显示θ调制原始图像后的假彩色编码图(复振幅图像)
catch
        errordlg('没有导入编码图或编码图太大，请您重新导入编码图','警告');%操作不合理，报错
        return;
end
    
% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域
cla(handles.axes4);%清空图形区域
cla(handles.axes5);%清空图形区域
cla(handles.axes6);%清空图形区域


% --- Executes on button press in BaoCunPpushbutton.
function BaoCunPpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to BaoCunPpushbutton (see GCBO)
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
handles2= TheTaTiaoZhiYuanLi;%取得相应的界面对象
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
