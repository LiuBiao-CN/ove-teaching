function varargout = PiJianGanShe(varargin)
% PIJIANGANSHE MATLAB code for PiJianGanShe.fig
%      PIJIANGANSHE, by itself, creates a new PIJIANGANSHE or raises the existing
%      singleton*.
%
%      H = PIJIANGANSHE returns the handle to a new PIJIANGANSHE or the handle to
%      the existing singleton*.
%
%      PIJIANGANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIJIANGANSHE.M with the given input arguments.
%
%      PIJIANGANSHE('Property','Value',...) creates a new PIJIANGANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PiJianGanShe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PiJianGanShe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PiJianGanShe

% Last Modified by GUIDE v2.5 24-Mar-2024 23:05:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PiJianGanShe_OpeningFcn, ...
                   'gui_OutputFcn',  @PiJianGanShe_OutputFcn, ...
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


% --- Executes just before PiJianGanShe is made visible.
function PiJianGanShe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PiJianGanShe (see VARARGIN)

% Choose default command line output for PiJianGanShe
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('劈尖干涉原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.ZheSheLiEdit,'enable','off');
set(handles.ZheSheLiSlider,'enable','off');
set(handles.JiaJiaoEdit,'enable','off');
set(handles.JiaJiaoSlider,'enable','off');
set(handles.GuanChaMianEdit,'enable','off');
set(handles.GuanChaMianSlider,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
set(handles.pushbutton3,'enable','off');
set(handles.XEdit,'enable','off');
set(handles.YEdit,'enable','off');
set(handles.XEdit,'string','无');
set(handles.YEdit,'string','无');
set(handles.checkbox2,'enable','off');
set(handles.JRQXRadiobutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PiJianGanShe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PiJianGanShe_OutputFcn(hObject, eventdata, handles) 
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
handles2= DengHouGanShe;%取得光学仿真等厚干涉界面对象
handles2=guihandles(handles2);%跳转到光学仿真等厚干涉界面


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
axis off;
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域

% --- Executes on button press in WuQueXianPushbutton.
function WuQueXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to WuQueXianPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.ZheSheLiEdit,'enable','on');
set(handles.ZheSheLiSlider,'enable','on');
set(handles.JiaJiaoEdit,'enable','on');
set(handles.JiaJiaoSlider,'enable','on');
set(handles.GuanChaMianEdit,'enable','on');
set(handles.GuanChaMianSlider,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
set(handles.pushbutton3,'enable','on');
set(handles.JRQXRadiobutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    set(handles.checkbox2,'enable','off');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    x=linspace(0,L,N);
    y=linspace(-L/2,L/2,N);%生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=thita*x;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase=2*n*z*k+pi;%两干涉光之间的相位差（有半波损失）
    I=1+cos(phase);%干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(I(:))])%没有缺陷情况下的劈尖干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I),shading interp,colormap(gray)
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita.*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布  
        z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.checkbox2,'enable','off');
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    catch
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            if(get(handles.XEdit,'string') == '无')
                set(handles.XEdit,'string','256');
            end
            if(get(handles.YEdit,'string') == '无')
                set(handles.YEdit,'string','256');
            end
            set(handles.checkbox2,'enable','on');
            set(handles.JRQXRadiobutton,'enable','on');
            x=linspace(0,L,N);
            y=linspace(-L/2,L/2,N);%生成二维空间网格
            [x,y]=meshgrid(x,y);
            z=thita*x;%空气膜厚度的分布
            n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
            %下面仿真有缺陷时的情况
            %===============================================
            x0=str2double(get(handles.XEdit,'string'));
            y0=str2double(get(handles.YEdit,'string'));
            duv=zeros(N,N);%预定义待处理图像
            for m=0:N-1%行循环
                for n=0:N-1%列循环
                    duv(m+1,n+1)=sqrt((m-x0+1-0.5).^2+(n-y0+1-0.5).^2);%计算半径函数
                end%列循环结束
            end%行循环结束
           check1=get(handles.checkbox2,'value');
            if (isequal(check1,0))
                dz=exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凸) 
            else
                dz=1-exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凹) 
            end
            %===============================================
            z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
            I=1+cos(phase1);%有缺陷情况下的干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
            %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end

% --- Executes on button press in YouQueXianPushbutton.
function YouQueXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to YouQueXianPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try %对异常作出响应
    FileName = handles.FileName;
    FilePath = handles.FilePath;
    aa=imread([FilePath,FileName]);%缺陷平板
    aa=double(aa(:,:,1)); %缺陷平板
    aa=aa./max(max(aa));%归一化
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    aa=aa.*lamda;%波长量级
    k=2*pi/lamda;%波数
    N=2*size(aa,1);%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    x=linspace(0,L,N);
    y=linspace(-L/2,L/2,N);%生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=thita.*x;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    %下面仿真有缺陷时的情况
    dz=zeros(N,N);%玻璃面凸凹的分布
    dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布  
    z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
    phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
    I=1+cos(phase1);%有缺陷情况下的干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
    %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
catch
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    check=get(handles.JRQXRadiobutton,'value');
    if isequal(check,1)
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        %===============================================
        x0=str2double(get(handles.XEdit,'string'));
        y0=str2double(get(handles.YEdit,'string'));
        duv=zeros(N,N);%预定义待处理图像频域滤波器变量
        for m=0:N-1%行循环
            for n=0:N-1%列循环
                duv(m+1,n+1)=sqrt((m-x0+1-0.5).^2+(n-y0+1-0.5).^2);%计算半径函数
            end%列循环结束
        end%行循环结束
       check1=get(handles.checkbox2,'value');
        if (isequal(check1,0))
            dz=exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凸) 
        else
            dz=1-exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凹) 
        end
        %===============================================
        z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    else
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=peaks(N)*0.4*lamda;%玻璃面凸凹的分布                                             
        z1=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    end
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
var=get(handles.ZheSheLiSlider,'Value');%获取实验中介质折射率滑动条的值
set(handles.ZheSheLiEdit,'String',num2str(var));%将滑动条的值(介质折射率)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    set(handles.checkbox2,'enable','off');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    x=linspace(0,L,N);
    y=linspace(-L/2,L/2,N);%生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=thita*x;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase=2*n*z*k+pi;%两干涉光之间的相位差（有半波损失）
    I=1+cos(phase);%干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(I(:))])%没有缺陷情况下的劈尖干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I),shading interp,colormap(gray)
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita.*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布  
        z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.checkbox2,'enable','off');
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    catch
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            set(handles.JRQXRadiobutton,'enable','on');
            x=linspace(0,L,N);
            y=linspace(-L/2,L/2,N);%生成二维空间网格
            [x,y]=meshgrid(x,y);
            z=thita*x;%空气膜厚度的分布
            n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
            %下面仿真有缺陷时的情况
            %===============================================
            x0=str2double(get(handles.XEdit,'string'));
            y0=str2double(get(handles.YEdit,'string'));
            duv=zeros(N,N);%预定义待处理图像频域滤波器变量
            for m=0:N-1%行循环
                for n=0:N-1%列循环
                    duv(m+1,n+1)=sqrt((m-x0+1-0.5).^2+(n-y0+1-0.5).^2);%计算半径函数
                end%列循环结束
            end%行循环结束
           check1=get(handles.checkbox2,'value');
            if (isequal(check1,0))
                dz=exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凸) 
            else
                dz=1-exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凹) 
            end
            %===============================================
            z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
            I=1+cos(phase1);%有缺陷情况下的干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
            %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
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



function GuanChaMianEdit_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GuanChaMianEdit as text
%        str2double(get(hObject,'String')) returns contents of GuanChaMianEdit as a double
var = str2double(get(handles.GuanChaMianEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function GuanChaMianEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMianEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function GuanChaMianSlider_Callback(hObject, eventdata, handles)
% hObject    handle to GuanChaMianSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.GuanChaMianSlider,'Value');%获取实验中玻璃表面尺寸滑动条的值
set(handles.GuanChaMianEdit,'String',num2str(var));%将滑动条的值(玻璃表面尺寸)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    set(handles.checkbox2,'enable','off');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    x=linspace(0,L,N);
    y=linspace(-L/2,L/2,N);%生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=thita*x;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase=2*n*z*k+pi;%两干涉光之间的相位差（有半波损失）
    I=1+cos(phase);%干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(I(:))])%没有缺陷情况下的劈尖干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I),shading interp,colormap(gray)
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita.*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布  
        z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.checkbox2,'enable','off');
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    catch
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            set(handles.JRQXRadiobutton,'enable','on');
            x=linspace(0,L,N);
            y=linspace(-L/2,L/2,N);%生成二维空间网格
            [x,y]=meshgrid(x,y);
            z=thita*x;%空气膜厚度的分布
            n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
            %下面仿真有缺陷时的情况
            %===============================================
            x0=str2double(get(handles.XEdit,'string'));
            y0=str2double(get(handles.YEdit,'string'));
            duv=zeros(N,N);%预定义待处理图像频域滤波器变量
            for m=0:N-1%行循环
                for n=0:N-1%列循环
                    duv(m+1,n+1)=sqrt((m-x0+1-0.5).^2+(n-y0+1-0.5).^2);%计算半径函数
                end%列循环结束
            end%行循环结束
           check1=get(handles.checkbox2,'value');
            if (isequal(check1,0))
                dz=exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凸) 
            else
                dz=1-exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凹) 
            end
            %===============================================
            z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
            I=1+cos(phase1);%有缺陷情况下的干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
            %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end

% --- Executes during object creation, after setting all properties.
function GuanChaMianSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GuanChaMianSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function JiaJiaoEdit_Callback(hObject, eventdata, handles)
% hObject    handle to JiaJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JiaJiaoEdit as text
%        str2double(get(hObject,'String')) returns contents of JiaJiaoEdit as a double
var = str2double(get(handles.JiaJiaoEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function JiaJiaoEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiaJiaoEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function JiaJiaoSlider_Callback(hObject, eventdata, handles)
% hObject    handle to JiaJiaoSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.JiaJiaoSlider,'Value');%获取实验中玻璃表面间的夹角(弧度)滑动条的值
set(handles.JiaJiaoEdit,'String',num2str(var));%将滑动条的值(玻璃表面间的夹角(弧度))转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    set(handles.checkbox2,'enable','off');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    x=linspace(0,L,N);
    y=linspace(-L/2,L/2,N);%生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=thita*x;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase=2*n*z*k+pi;%两干涉光之间的相位差（有半波损失）
    I=1+cos(phase);%干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(I(:))])%没有缺陷情况下的劈尖干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I),shading interp,colormap(gray)
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita.*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布  
        z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.checkbox2,'enable','off');
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    catch
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            set(handles.JRQXRadiobutton,'enable','on');
            x=linspace(0,L,N);
            y=linspace(-L/2,L/2,N);%生成二维空间网格
            [x,y]=meshgrid(x,y);
            z=thita*x;%空气膜厚度的分布
            n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
            %下面仿真有缺陷时的情况
            %===============================================
            x0=str2double(get(handles.XEdit,'string'));
            y0=str2double(get(handles.YEdit,'string'));
            duv=zeros(N,N);%预定义待处理图像频域滤波器变量
            for m=0:N-1%行循环
                for n=0:N-1%列循环
                    duv(m+1,n+1)=sqrt((m-x0+1-0.5).^2+(n-y0+1-0.5).^2);%计算半径函数
                end%列循环结束
            end%行循环结束
           check1=get(handles.checkbox2,'value');
            if (isequal(check1,0))
                dz=exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凸) 
            else
                dz=1-exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凹) 
            end
            %===============================================
            z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
            I=1+cos(phase1);%有缺陷情况下的干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
            %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end

% --- Executes during object creation, after setting all properties.
function JiaJiaoSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JiaJiaoSlider (see GCBO)
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
var=get(handles.BoChangSlider,'Value');%获取实验中波长滑动条的值
set(handles.BoChangEdit,'String',num2str(var));%将滑动条的值(波长)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    set(handles.checkbox2,'enable','off');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
    x=linspace(0,L,N);
    y=linspace(-L/2,L/2,N);%生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=thita*x;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase=2*n*z*k+pi;%两干涉光之间的相位差（有半波损失）
    I=1+cos(phase);%干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I,[0,max(I(:))])%没有缺陷情况下的劈尖干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I),shading interp,colormap(gray)
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        x=linspace(0,L,N);
        y=linspace(-L/2,L/2,N);%生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=thita.*x;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布  
        z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
        I=1+cos(phase1);%有缺陷情况下的干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.checkbox2,'enable','off');
        %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
    catch
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        thita=str2double(get(handles.JiaJiaoEdit,'string'));%两玻璃表面间的夹角θ，单位，弧度
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面尺寸，单位，米
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            set(handles.JRQXRadiobutton,'enable','on');
            x=linspace(0,L,N);
            y=linspace(-L/2,L/2,N);%生成二维空间网格
            [x,y]=meshgrid(x,y);
            z=thita*x;%空气膜厚度的分布
            n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
            %下面仿真有缺陷时的情况
            %===============================================
            x0=str2double(get(handles.XEdit,'string'));
            y0=str2double(get(handles.YEdit,'string'));
            duv=zeros(N,N);%预定义待处理图像频域滤波器变量
            for m=0:N-1%行循环
                for n=0:N-1%列循环
                    duv(m+1,n+1)=sqrt((m-x0+1-0.5).^2+(n-y0+1-0.5).^2);%计算半径函数
                end%列循环结束
            end%行循环结束
           check1=get(handles.checkbox2,'value');
            if (isequal(check1,0))
                dz=exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凸) 
            else
                dz=1-exp((-1.0).*(duv.^2)./(2*60))*0.001*lamda;%高斯缺陷函数(凹) 
            end
            %===============================================
            z1=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase1=2*n*z1*k+pi;%两干涉光之间的相位差（有半波损失）
            I=1+cos(phase1);%有缺陷情况下的干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I,[0,max(I(:))])%玻璃面有凸凹时劈尖干涉条纹
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(z1,I),shading interp,colormap(gray)%有缺陷情况得到的劈尖干涉条纹与陷情分布的情况
            %meshz(z1)%玻璃面有凸凹情况下的空气膜厚度
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
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
handles2= PiJianGanSheYuanLi;%取得相应的界面对象
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



function XEdit_Callback(hObject, eventdata, handles)
% hObject    handle to XEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XEdit as text
%        str2double(get(hObject,'String')) returns contents of XEdit as a double


% --- Executes during object creation, after setting all properties.
function XEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YEdit_Callback(hObject, eventdata, handles)
% hObject    handle to YEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YEdit as text
%        str2double(get(hObject,'String')) returns contents of YEdit as a double


% --- Executes during object creation, after setting all properties.
function YEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ZEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZEdit as text
%        str2double(get(hObject,'String')) returns contents of ZEdit as a double


% --- Executes during object creation, after setting all properties.
function ZEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in JRQXRadiobutton.
function JRQXRadiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to JRQXRadiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of JRQXRadiobutton


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
handles.FileName =FileName;
handles.FilePath = FilePath;
guidata(hObject, handles)%函数之间传递参数


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
