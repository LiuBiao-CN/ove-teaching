function varargout = NiuDunHuan(varargin)
% NIUDUNHUAN MATLAB code for NiuDunHuan.fig
%      NIUDUNHUAN, by itself, creates a new NIUDUNHUAN or raises the existing
%      singleton*.
%
%      H = NIUDUNHUAN returns the handle to a new NIUDUNHUAN or the handle to
%      the existing singleton*.
%
%      NIUDUNHUAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NIUDUNHUAN.M with the given input arguments.
%
%      NIUDUNHUAN('Property','Value',...) creates a new NIUDUNHUAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NiuDunHuan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NiuDunHuan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NiuDunHuan

% Last Modified by GUIDE v2.5 20-Apr-2024 15:34:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NiuDunHuan_OpeningFcn, ...
                   'gui_OutputFcn',  @NiuDunHuan_OutputFcn, ...
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


% --- Executes just before NiuDunHuan is made visible.
function NiuDunHuan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NiuDunHuan (see VARARGIN)

%********************************************************************************************
%handles.output = hObject;
%NiuDunHuanYuanLiTu = imread('牛顿环干涉原理图.jpg');%获取牛顿环干涉原理图
%axes(handles.axes1);%显示牛顿环干涉原理图
%imshow(NiuDunHuanYuanLiTu);%显示牛顿环干涉原理图
%********************************************************************************************

% Choose default command line output for NiuDunHuan
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('牛顿环干涉原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.ZheSheLiEdit,'enable','off');
set(handles.ZheSheLiSlider,'enable','off');
set(handles.PingTuTouJingBanJingEdit,'enable','off');
set(handles.PingTuTouJingBanJingSlider,'enable','off');
set(handles.GuanChaMianEdit,'enable','off');
set(handles.GuanChaMianSlider,'enable','off');
set(handles.FanSheXiShuEdit,'enable','off');
set(handles.FanSheXiShuSlider,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.PBBLEdit,'enable','off');
set(handles.PBBLSlider,'enable','off');
set(handles.XEdit,'enable','off');
set(handles.YEdit,'enable','off');
set(handles.checkbox2,'enable','off');
set(handles.JRQXRadiobutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NiuDunHuan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NiuDunHuan_OutputFcn(hObject, eventdata, handles) 
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
handles2= DengHouGanShe;%取得光学仿真等倾干涉界面对象
handles2=guihandles(handles2);%跳转到光学仿真等倾干涉界面


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles2= NiuDunHuanYuanLi;%取得相应的界面对象
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



function FanSheXiShuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to FanSheXiShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FanSheXiShuEdit as text
%        str2double(get(hObject,'String')) returns contents of FanSheXiShuEdit as a double
var = str2double(get(handles.XianShuJianJvEdit,'string'));
if((var<0) || (var>1))
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function FanSheXiShuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FanSheXiShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function FanSheXiShuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to FanSheXiShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.FanSheXiShuSlider,'Value');%获取实验中玻璃反射系数滑动条的值
set(handles.FanSheXiShuEdit,'String',num2str(var));%将滑动条的值(玻璃反射系数)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end

% --- Executes during object creation, after setting all properties.
function FanSheXiShuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FanSheXiShuSlider (see GCBO)
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
var=get(handles.GuanChaMianSlider,'Value');%获取实验中观察面尺寸滑动条的值
set(handles.GuanChaMianEdit,'String',num2str(var));%将滑动条的值(观察面尺寸)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
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



function PingTuTouJingBanJingEdit_Callback(hObject, eventdata, handles)
% hObject    handle to PingTuTouJingBanJingEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PingTuTouJingBanJingEdit as text
%        str2double(get(hObject,'String')) returns contents of PingTuTouJingBanJingEdit as a double
var = str2double(get(handles.PingTuTouJingBanJingEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function PingTuTouJingBanJingEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PingTuTouJingBanJingEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function PingTuTouJingBanJingSlider_Callback(hObject, eventdata, handles)
% hObject    handle to PingTuTouJingBanJingSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.PingTuTouJingBanJingSlider,'Value');%获取实验中平凸透镜凸面的半径滑动条的值
set(handles.PingTuTouJingBanJingEdit,'String',num2str(var));%将滑动条的值(平凸透镜凸面的半径)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end

% --- Executes during object creation, after setting all properties.
function PingTuTouJingBanJingSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PingTuTouJingBanJingSlider (see GCBO)
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
var=get(handles.ZheSheLiSlider,'Value');%获取实验中折射率滑动条的值
set(handles.ZheSheLiEdit,'String',num2str(var));%将滑动条的值(折射率)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
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
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
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


% --- Executes on button press in FanSheShiPushbutton.
function FanSheShiPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FanSheShiPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.ZheSheLiEdit,'enable','on');
set(handles.ZheSheLiSlider,'enable','on');
set(handles.PingTuTouJingBanJingEdit,'enable','on');
set(handles.PingTuTouJingBanJingSlider,'enable','on');
set(handles.GuanChaMianEdit,'enable','on');
set(handles.GuanChaMianSlider,'enable','on');
set(handles.FanSheXiShuEdit,'enable','on');
set(handles.FanSheXiShuSlider,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
set(handles.QingKongPushbutton,'enable','on');
set(handles.PBBLEdit,'enable','on');
set(handles.PBBLSlider,'enable','on');
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
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            if(get(handles.XEdit,'string') == '无')
                set(handles.XEdit,'string','86');
            end
            if(get(handles.YEdit,'string') == '无')
                set(handles.YEdit,'string','86');
            end
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            if(get(handles.XEdit,'string') == '无')
                set(handles.XEdit,'string','86');
            end
            if(get(handles.YEdit,'string') == '无')
                set(handles.YEdit,'string','86');
            end
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end


% --- Executes on button press in TouShiShiPushbutton.
function TouShiShiPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to TouShiShiPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
k=2*pi/lamda;%波数
N=512;%采样数
R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
x=linspace(-L/2,L/2,N);%生成二维空间网格
y=x; %生成二维空间网格
[x,y]=meshgrid(x,y);
z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
A1=1-r;
A2=(1-r)*r*r; %两干涉光的振幅
I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
axes(handles.axes2);%调用干涉图样坐标
imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
%axes(handles.axes3);axis on;%调用干涉图样坐标
%surf(z,I2),shading interp,colormap(gray)

% --- Executes on button press in FanSheShiYouQueXianPushbutton.
function FanSheShiYouQueXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FanSheShiYouQueXianPushbutton (see GCBO)
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
    N=2*size(aa,1);%采样数%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    %下面仿真有缺陷时的情况
    dz=zeros(N,N);%玻璃面凸凹的分布
    dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
    z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
    phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;A2=(1-r).^2*r;%两干涉光的振幅
    I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(dz,I3),shading interp,colormap(gray)
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I3,[0,max(I3(:))])
catch
    check=get(handles.JRQXRadiobutton,'value');
    if isequal(check,1)
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
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
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    else
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=peaks(N)*0.4*lamda;%玻璃面凸凹的分布                                             
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    end
end
    


% --- Executes on button press in TousheYouQueXianPushbutton.
function TousheYouQueXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to TousheYouQueXianPushbutton (see GCBO)
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
    N=2*size(aa,1);%采样数%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    %下面仿真有缺陷时的情况
    dz=zeros(N,N);%玻璃面凸凹的分布
    dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
    z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
    phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I3,[0,max(I3(:))])
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(dz,I3),shading interp,colormap(gray)
catch
    check=get(handles.JRQXRadiobutton,'value');
    if isequal(check,1)
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
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
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    else
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        k=2*pi/lamda;%波数
        N=512;%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z=(x.^2+y.^2)/2/R;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=peaks(N)*0.4*lamda;%玻璃面凸凹的分布                                             
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    end
end


% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
axis off;
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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



function PBBLEdit_Callback(hObject, eventdata, handles)
% hObject    handle to PBBLEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PBBLEdit as text
%        str2double(get(hObject,'String')) returns contents of PBBLEdit as a double


% --- Executes during object creation, after setting all properties.
function PBBLEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PBBLEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function PBBLSlider_Callback(hObject, eventdata, handles)
% hObject    handle to PBBLSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.PBBLSlider,'Value');%获取实验中平板玻璃的半径滑动条的值
set(handles.PBBLEdit,'String',num2str(var));%将滑动条的值(平板玻璃的半径)转换成字符串然后赋给对应文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase1=2*n*z*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
    A1=r;
    A2=(1-r).^2*r; %两干涉光的振幅
    I1=A1*A1+A2*A2+2*A1*A2*cos(phase1);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I1,[0,max(I1(:))])%反射式牛顿环干涉条纹 
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I1),shading interp,colormap(gray)
    %imshow(I1,[0,max(I1(:))])
    %cla(handles.axes3);%清除坐标区
elseif(var1 == 2)
    set(handles.XEdit,'enable','off');
    set(handles.YEdit,'enable','off');
    set(handles.checkbox2,'enable','off');
    set(handles.XEdit,'string','无');
    set(handles.YEdit,'string','无');
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
    k=2*pi/lamda;%波数
    N=512;%采样数
    R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
    R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
    L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
    r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
    x=linspace(-L/2,L/2,N);%生成二维空间网格
    y=x; %生成二维空间网格
    [x,y]=meshgrid(x,y);
    z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
    z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
    z=z01+z02;%空气膜厚度的分布
    n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
    phase2=2*n*z*k;%两干涉光之间的相位差（透射式，没有半波损失）
    A1=1-r;
    A2=(1-r)*r*r; %两干涉光的振幅
    I2=A1*A1+A2*A2+2*A1*A2*cos(phase2);       %干涉光强
    axes(handles.axes2);%调用干涉图样坐标
    imshow(I2,[0,max(I2(:))])%透射式牛顿环干涉条纹
    axes(handles.axes3);axis on;%调用干涉图样坐标
    surf(z,I2),shading interp,colormap(gray)
elseif(var1 == 3)
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                          
        z3=z-dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
        A1=r;A2=(1-r).^2*r;%两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)           
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k+pi;%两干涉光之间的相位差（反射式，有半波损失）
            A1=r;A2=(1-r).^2*r;%两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
else
    try %对异常作出响应
        FileName = handles.FileName;
        FilePath = handles.FilePath;
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.checkbox2,'enable','off');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        aa=imread([FilePath,FileName]);%缺陷平板
        aa=double(aa(:,:,1)); %缺陷平板
        aa=aa./max(max(aa));%归一化
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
        aa=aa.*lamda;%波长量级
        k=2*pi/lamda;%波数
        N=2*size(aa,1);%采样数%采样数
        R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
        R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
        L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
        r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
        x=linspace(-L/2,L/2,N);%生成二维空间网格
        y=x; %生成二维空间网格
        [x,y]=meshgrid(x,y);
        z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
        z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
        z=z01+z02;%空气膜厚度的分布
        n=str2double(get(handles.ZheSheLiEdit,'string'));%获取介质折射率(屈光度)
        %下面仿真有缺陷时的情况
        dz=zeros(N,N);%玻璃面凸凹的分布
        dz(floor(N/4):(floor(N/4)+size(aa,1)-1),floor(N/4):(floor(N/4)+size(aa,2)-1))=aa;%玻璃面凸凹的分布                                             
        z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
        phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
        A1=1-r;
        A2=(1-r)*r*r; %两干涉光的振幅
        I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
        axes(handles.axes2);%调用干涉图样坐标
        imshow(I3,[0,max(I3(:))])
        axes(handles.axes3);axis on;%调用干涉图样坐标
        surf(dz,I3),shading interp,colormap(gray)
    catch
        check=get(handles.JRQXRadiobutton,'value');
        if isequal(check,1)
            set(handles.XEdit,'enable','on');
            set(handles.YEdit,'enable','on');
            set(handles.checkbox2,'enable','on');
            lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;%获取波长，单位：米
            k=2*pi/lamda;%波数
            N=512;%采样数
            R=str2double(get(handles.PingTuTouJingBanJingEdit,'string'));%平凸透镜凸面的半径，单位，米
            R0=str2double(get(handles.PBBLEdit,'string'));%平板玻璃的半径，单位，米
            L=str2double(get(handles.GuanChaMianEdit,'string'))*0.001;%玻璃表面（观察面）尺寸，单位，米
            r=str2double(get(handles.FanSheXiShuEdit,'string'));%玻璃反射系数
            x=linspace(-L/2,L/2,N);%生成二维空间网格
            y=x; %生成二维空间网格
            [x,y]=meshgrid(x,y);
            z01=(x.^2+y.^2)./2./R;%空气膜厚度的分布
            z02=sqrt(R0.^2-x.^2-y.^2)-sqrt(R0.^2-(L/2).^2);%空气膜厚度的分布
            z=z01+z02;%空气膜厚度的分布
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
            z3=z+dz;%玻璃面有凸凹情况下的空气膜厚度
            phase3=2*n*z3*k;%两干涉光之间的相位差（透射式，无半波损失）
            A1=1-r;
            A2=(1-r)*r*r; %两干涉光的振幅
            I3=A1*A1+A2*A2+2*A1*A2*cos(phase3);%干涉光强
            axes(handles.axes2);%调用干涉图样坐标
            imshow(I3,[0,max(I3(:))])
            axes(handles.axes3);axis on;%调用干涉图样坐标
            surf(dz,I3),shading interp,colormap(gray)
        else
            errordlg('没有导入缺陷平板或缺陷平板太大，请您重新导入缺陷平板','警告');%操作不合理，报错
            return;
        end
    end
end

% --- Executes during object creation, after setting all properties.
function PBBLSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PBBLSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
