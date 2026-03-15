function varargout = KongJianLvBo(varargin)
% KONGJIANLVBO MATLAB code for KongJianLvBo.fig
%      KONGJIANLVBO, by itself, creates a new KONGJIANLVBO or raises the existing
%      singleton*.
%
%      H = KONGJIANLVBO returns the handle to a new KONGJIANLVBO or the handle to
%      the existing singleton*.
%
%      KONGJIANLVBO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KONGJIANLVBO.M with the given input arguments.
%
%      KONGJIANLVBO('Property','Value',...) creates a new KONGJIANLVBO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KongJianLvBo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KongJianLvBo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KongJianLvBo

% Last Modified by GUIDE v2.5 28-Mar-2024 20:08:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KongJianLvBo_OpeningFcn, ...
                   'gui_OutputFcn',  @KongJianLvBo_OutputFcn, ...
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


% --- Executes just before KongJianLvBo is made visible.
function KongJianLvBo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KongJianLvBo (see VARARGIN)

% Choose default command line output for KongJianLvBo
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('空间滤波原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');%显示图
axes(handles.axes3);
imshow('背景.bmp');%显示图
set(handles.WuMianDaXiaoEdit,'enable','off');%设置控件为灰色
set(handles.WuMianDaXiaoSlider,'enable','off');
set(handles.GuangShanChanShuEdit,'enable','off');
set(handles.GuangShanChanShuSlider,'enable','off');
set(handles.FengKuanEdit,'enable','off');
set(handles.FengKuanSlider,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KongJianLvBo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KongJianLvBo_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in FangZhengPushbutton.
function FangZhengPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FangZhengPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.QingKongPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
%仿真正交光栅的衍射
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    set(handles.WuMianDaXiaoEdit,'String','无');
    set(handles.GuangShanChanShuEdit,'String','无');
    set(handles.FengKuanEdit,'String','无');
    set(handles.WuMianDaXiaoEdit,'enable','off');%设置控件为灰色
    set(handles.WuMianDaXiaoSlider,'enable','off');
    set(handles.GuangShanChanShuEdit,'enable','off');
    set(handles.GuangShanChanShuSlider,'enable','off');
    set(handles.FengKuanEdit,'enable','off');
    set(handles.FengKuanSlider,'enable','off');
    aa = imread([FilePath,FileName]);
    ab = rgb2gray(aa);%导入需要滤波的图像
    ab1 = double(ab(:,:,1));%导入需要滤波的图像
    U0=ab1./max(ab1(:));%导入需要滤波的图像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
    elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
    elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
    else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
catch
    set(handles.WuMianDaXiaoEdit,'enable','on');%设置控件
    set(handles.WuMianDaXiaoSlider,'enable','on');
    set(handles.GuangShanChanShuEdit,'enable','on');
    set(handles.GuangShanChanShuSlider,'enable','on');
    set(handles.FengKuanEdit,'enable','on');
    set(handles.FengKuanSlider,'enable','on');
    if(get(handles.WuMianDaXiaoEdit,'string') == '无')
        set(handles.WuMianDaXiaoEdit,'String','512');
    end
    if(get(handles.GuangShanChanShuEdit,'string') == '无')
        set(handles.GuangShanChanShuEdit,'String','30');
    end
    if(get(handles.FengKuanEdit,'string') == '无')
        set(handles.FengKuanEdit,'String','10');
    end
    r=str2double(get(handles.WuMianDaXiaoEdit,'string'));
    c=r;%物面采样数
    U0=zeros(r,c);%预设物
    d=str2double(get(handles.GuangShanChanShuEdit,'string'));
    a=str2double(get(handles.FengKuanEdit,'string'));%光栅常数和缝宽
    for n=1:d:r%循环生成物(二维光栅)
       U0(n:n+a,:)=1;%先生成行方向的光栅
    end%循环结束
    for m=1:d:c%循环生成物(二维光栅)
       U0 (:,m:m+a)=1;%生成列方向的光栅
    end%循环结束
    U0=U0(1:r,1:c);%二维正交光栅
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(hot)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
     elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
     elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
     else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
end

% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域


function FengKuanEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FengKuanEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FengKuanEdit as text
%        str2double(get(hObject,'String')) returns contents of FengKuanEdit as a double
var = str2double(get(handles.FengKuanEdit,'string'));
if(var<0)
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
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    set(handles.WuMianDaXiaoEdit,'String','无');
    set(handles.GuangShanChanShuEdit,'String','无');
    set(handles.FengKuanEdit,'String','无');
    set(handles.WuMianDaXiaoEdit,'enable','off');%设置控件为灰色
    set(handles.WuMianDaXiaoSlider,'enable','off');
    set(handles.GuangShanChanShuEdit,'enable','off');
    set(handles.GuangShanChanShuSlider,'enable','off');
    set(handles.FengKuanEdit,'enable','off');
    set(handles.FengKuanSlider,'enable','off');
    aa = imread([FilePath,FileName]);
    ab = rgb2gray(aa);%导入需要滤波的图像
    ab1 = double(ab(:,:,1));%导入需要滤波的图像
    U0=ab1./max(ab1(:));%导入需要滤波的图像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
    elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
    elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
    else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
catch
    set(handles.WuMianDaXiaoEdit,'enable','on');%设置控件
    set(handles.WuMianDaXiaoSlider,'enable','on');
    set(handles.GuangShanChanShuEdit,'enable','on');
    set(handles.GuangShanChanShuSlider,'enable','on');
    set(handles.FengKuanEdit,'enable','on');
    set(handles.FengKuanSlider,'enable','on');
    if(get(handles.WuMianDaXiaoEdit,'string') == '无')
        set(handles.WuMianDaXiaoEdit,'String','512');
    end
    if(get(handles.GuangShanChanShuEdit,'string') == '无')
        set(handles.GuangShanChanShuEdit,'String','30');
    end
    if(get(handles.FengKuanEdit,'string') == '无')
        set(handles.FengKuanEdit,'String','10');
    end
    r=str2double(get(handles.WuMianDaXiaoEdit,'string'));
    c=r;%物面采样数
    U0=zeros(r,c);%预设物
    d=str2double(get(handles.GuangShanChanShuEdit,'string'));
    a=str2double(get(handles.FengKuanEdit,'string'));%光栅常数和缝宽
    for n=1:d:r%循环生成物(二维光栅)
       U0(n:n+a,:)=1;%先生成行方向的光栅
    end%循环结束
    for m=1:d:c%循环生成物(二维光栅)
       U0 (:,m:m+a)=1;%生成列方向的光栅
    end%循环结束
    U0=U0(1:r,1:c);%二维正交光栅
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
     elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
     elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
     else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
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



function GuangShanChanShuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuangShanChanShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuangShanChanShuEdit as text
%        str2double(get(hObject,'String')) returns contents of GuangShanChanShuEdit as a double
var = str2double(get(handles.GuangShanChanShuEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GuangShanChanShuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuangShanChanShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GuangShanChanShuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GuangShanChanShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    set(handles.WuMianDaXiaoEdit,'String','无');
    set(handles.GuangShanChanShuEdit,'String','无');
    set(handles.FengKuanEdit,'String','无');
    set(handles.WuMianDaXiaoEdit,'enable','off');%设置控件为灰色
    set(handles.WuMianDaXiaoSlider,'enable','off');
    set(handles.GuangShanChanShuEdit,'enable','off');
    set(handles.GuangShanChanShuSlider,'enable','off');
    set(handles.FengKuanEdit,'enable','off');
    set(handles.FengKuanSlider,'enable','off');
    aa = imread([FilePath,FileName]);
    ab = rgb2gray(aa);%导入需要滤波的图像
    ab1 = double(ab(:,:,1));%导入需要滤波的图像
    U0=ab1./max(ab1(:));%导入需要滤波的图像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
    elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
    elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
    else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
catch
    set(handles.WuMianDaXiaoEdit,'enable','on');%设置控件
    set(handles.WuMianDaXiaoSlider,'enable','on');
    set(handles.GuangShanChanShuEdit,'enable','on');
    set(handles.GuangShanChanShuSlider,'enable','on');
    set(handles.FengKuanEdit,'enable','on');
    set(handles.FengKuanSlider,'enable','on');
    if(get(handles.WuMianDaXiaoEdit,'string') == '无')
        set(handles.WuMianDaXiaoEdit,'String','512');
    end
    if(get(handles.GuangShanChanShuEdit,'string') == '无')
        set(handles.GuangShanChanShuEdit,'String','30');
    end
    if(get(handles.FengKuanEdit,'string') == '无')
        set(handles.FengKuanEdit,'String','10');
    end
    r=str2double(get(handles.WuMianDaXiaoEdit,'string'));
    c=r;%物面采样数
    U0=zeros(r,c);%预设物
    d=str2double(get(handles.GuangShanChanShuEdit,'string'));
    a=str2double(get(handles.FengKuanEdit,'string'));%光栅常数和缝宽
    for n=1:d:r%循环生成物(二维光栅)
       U0(n:n+a,:)=1;%先生成行方向的光栅
    end%循环结束
    for m=1:d:c%循环生成物(二维光栅)
       U0 (:,m:m+a)=1;%生成列方向的光栅
    end%循环结束
    U0=U0(1:r,1:c);%二维正交光栅
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
     elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
     elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
     else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
end

% --- Executes during object creation, after setting all properties.
function GuangShanChanShuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuangShanChanShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function WuMianDaXiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to WuMianDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of WuMianDaXiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of WuMianDaXiaoEdit as a double
var = str2double(get(handles.WuMianDaXiaoEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function WuMianDaXiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WuMianDaXiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function WuMianDaXiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to WuMianDaXiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    set(handles.WuMianDaXiaoEdit,'String','无');
    set(handles.GuangShanChanShuEdit,'String','无');
    set(handles.FengKuanEdit,'String','无');
    set(handles.WuMianDaXiaoEdit,'enable','off');%设置控件为灰色
    set(handles.WuMianDaXiaoSlider,'enable','off');
    set(handles.GuangShanChanShuEdit,'enable','off');
    set(handles.GuangShanChanShuSlider,'enable','off');
    set(handles.FengKuanEdit,'enable','off');
    set(handles.FengKuanSlider,'enable','off');
    aa = imread([FilePath,FileName]);
    ab = rgb2gray(aa);%导入需要滤波的图像
    ab1 = double(ab(:,:,1));%导入需要滤波的图像
    U0=ab1./max(ab1(:));%导入需要滤波的图像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
    elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
    elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
    else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
catch
    set(handles.WuMianDaXiaoEdit,'enable','on');%设置控件
    set(handles.WuMianDaXiaoSlider,'enable','on');
    set(handles.GuangShanChanShuEdit,'enable','on');
    set(handles.GuangShanChanShuSlider,'enable','on');
    set(handles.FengKuanEdit,'enable','on');
    set(handles.FengKuanSlider,'enable','on');
    if(get(handles.WuMianDaXiaoEdit,'string') == '无')
        set(handles.WuMianDaXiaoEdit,'String','512');
    end
    if(get(handles.GuangShanChanShuEdit,'string') == '无')
        set(handles.GuangShanChanShuEdit,'String','30');
    end
    if(get(handles.FengKuanEdit,'string') == '无')
        set(handles.FengKuanEdit,'String','10');
    end
    r=str2double(get(handles.WuMianDaXiaoEdit,'string'));
    c=r;%物面采样数
    U0=zeros(r,c);%预设物
    d=str2double(get(handles.GuangShanChanShuEdit,'string'));
    a=str2double(get(handles.FengKuanEdit,'string'));%光栅常数和缝宽
    for n=1:d:r%循环生成物(二维光栅)
       U0(n:n+a,:)=1;%先生成行方向的光栅
    end%循环结束
    for m=1:d:c%循环生成物(二维光栅)
       U0 (:,m:m+a)=1;%生成列方向的光栅
    end%循环结束
    U0=U0(1:r,1:c);%二维正交光栅
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面计算焦平面上的频谱
    Fuv=fftshift(fft2(U0));%计算后焦面上的光场分布
    I=Fuv.*conj(Fuv);%后焦面上的光强分布
    axes(handles.axes2);%调用杨氏双孔干涉图样坐标
    imshow(I,[0,max(I(:))/100]), colormap(pink)%后焦面上的光强分布
    dtlbq=get(handles.DTRadiobutton,'value');
    gtlbq=get(handles.GTRadiobutton,'value');
    Dtlbq=get(handles.DTLRadiobutton,'value');
    if(dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %低通滤波器
        DX=str2double(get(handles.DTEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=1;%理想低通滤波器
     elseif(gtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %高通滤波器
        DX=str2double(get(handles.GTEdit,'string'));
        H=ones(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DX)=0;%理想高通滤波器
     elseif(Dtlbq == 1)
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %带通滤波器
        DXN=str2double(get(handles.DTLNEdit,'string'));
        DXW=str2double(get(handles.GTLWEdit,'string'));
        H=zeros(size(U0,1),size(U0,2));%预定义待处理图像频域滤波器变量
        for m=0:size(U0,1)-1%待处理图像行循环
            for n=0:size(U0,2)-1%待处理图像列循环
                H(m+1,n+1)=sqrt((m-size(U0,1)/2+1-0.5).^2+(n-size(U0,2)/2+1-0.5).^2);%计算半径函数
            end%待处理图像列循环结束
        end%待处理图像行循环结束
        H(H<=DXW)=1;H(H<=DXN)=0;%理想低通滤波器
     else
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面生成多边形滤波器
        [rr,cc]=getline(gcf,'closed');%在图中选择多边形，并将坐标赋值给rr和cc
        H=zeros(size(U0,1),size(U0,2));%预设滤波器H
        H=roipoly(H,rr,cc);%生成滤波器H,使选定区域内的值等于1
        %figure,imshow(H,[])%显示滤波器H
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    end
    Fuv_H=H.*Fuv;%滤波
    %下面计算通过焦面后的光场到达观察面的光场
    Ui=ifft2(Fuv_H);%第二次成像
    Ii=Ui.*conj(Ui);%滤波后像面上的光强分布
    axes(handles.axes3);%调用杨氏双孔干涉图样坐标
    imshow(Ii,[]),colormap(gray)%显示滤波后像面上的光强分布
    %figure,plot(Ii(round(c/2),:))%显示滤波后像面上的光强分布的中间剖线
end

% --- Executes during object creation, after setting all properties.
function WuMianDaXiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WuMianDaXiaoSlider (see GCBO)
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
handles2= KongJianLvBoYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --- Executes on button press in DRTXPushbutton.
function DRTXPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DRTXPushbutton (see GCBO)
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


% --- Executes on button press in DTRadiobutton.
function DTRadiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to DTRadiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DTRadiobutton
var=get(handles.DTRadiobutton,'Value');%获取波长滑动条的值
if(var == 1)
    set(handles.GTRadiobutton,'enable','off');%设置控件为灰色
    set(handles.DTLRadiobutton,'enable','off');%设置控件为灰色
    set(handles.GTEdit,'enable','off');%设置控件为灰色
    set(handles.DTLNEdit,'enable','off');%设置控件为灰色
    set(handles.GTLWEdit,'enable','off');%设置控件为灰色
else
    set(handles.GTRadiobutton,'enable','on');%设置控件为灰色
    set(handles.DTLRadiobutton,'enable','on');%设置控件为灰色
    set(handles.GTEdit,'enable','on');%设置控件为灰色
    set(handles.DTLNEdit,'enable','on');%设置控件为灰色
    set(handles.GTLWEdit,'enable','on');%设置控件为灰色
end

% --- Executes on button press in GTRadiobutton.
function GTRadiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to GTRadiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GTRadiobutton
var=get(handles.GTRadiobutton,'Value');%获取波长滑动条的值
if(var == 1)
    set(handles.DTRadiobutton,'enable','off');%设置控件为灰色
    set(handles.DTEdit,'enable','off');%设置控件为灰色
    set(handles.DTLRadiobutton,'enable','off');%设置控件为灰色
    set(handles.DTLNEdit,'enable','off');%设置控件为灰色
    set(handles.GTLWEdit,'enable','off');%设置控件为灰色
else
    set(handles.DTRadiobutton,'enable','on');%设置控件为灰色
    set(handles.DTEdit,'enable','on');%设置控件为灰色
    set(handles.DTLRadiobutton,'enable','on');%设置控件为灰色
    set(handles.DTLNEdit,'enable','on');%设置控件为灰色
    set(handles.GTLWEdit,'enable','on');%设置控件为灰色
end

% --- Executes on button press in DTLRadiobutton.
function DTLRadiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to DTLRadiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DTLRadiobutton
var=get(handles.DTLRadiobutton,'Value');%获取波长滑动条的值
if(var == 1)
    set(handles.DTRadiobutton,'enable','off');%设置控件为灰色
    set(handles.DTEdit,'enable','off');%设置控件为灰色
    set(handles.GTRadiobutton,'enable','off');%设置控件为灰色
    set(handles.GTEdit,'enable','off');%设置控件为灰色
else
    set(handles.DTRadiobutton,'enable','on');%设置控件为灰色
    set(handles.DTEdit,'enable','on');%设置控件为灰色
    set(handles.GTRadiobutton,'enable','on');%设置控件为灰色
    set(handles.GTEdit,'enable','on');%设置控件为灰色
end


function DTEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DTEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DTEdit as text
%        str2double(get(hObject,'String')) returns contents of DTEdit as a double


% --- Executes during object creation, after setting all properties.
function DTEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DTEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GTEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GTEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GTEdit as text
%        str2double(get(hObject,'String')) returns contents of GTEdit as a double


% --- Executes during object creation, after setting all properties.
function GTEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GTEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DTLNEdit_Callback(hObject, eventdata, handles)
% hObject    handle to DTLNEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DTLNEdit as text
%        str2double(get(hObject,'String')) returns contents of DTLNEdit as a double


% --- Executes during object creation, after setting all properties.
function DTLNEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DTLNEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GTLWEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GTLWEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GTLWEdit as text
%        str2double(get(hObject,'String')) returns contents of GTLWEdit as a double


% --- Executes during object creation, after setting all properties.
function GTLWEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GTLWEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
