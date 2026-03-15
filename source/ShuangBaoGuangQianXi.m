function varargout = ShuangBaoGuangQianXi(varargin)
% SHUANGBAOGUANGQIANXI MATLAB code for ShuangBaoGuangQianXi.fig
%      SHUANGBAOGUANGQIANXI, by itself, creates a new SHUANGBAOGUANGQIANXI or raises the existing
%      singleton*.
%
%      H = SHUANGBAOGUANGQIANXI returns the handle to a new SHUANGBAOGUANGQIANXI or the handle to
%      the existing singleton*.
%
%      SHUANGBAOGUANGQIANXI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHUANGBAOGUANGQIANXI.M with the given input arguments.
%
%      SHUANGBAOGUANGQIANXI('Property','Value',...) creates a new SHUANGBAOGUANGQIANXI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ShuangBaoGuangQianXi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ShuangBaoGuangQianXi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ShuangBaoGuangQianXi

% Last Modified by GUIDE v2.5 13-Mar-2024 23:05:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ShuangBaoGuangQianXi_OpeningFcn, ...
                   'gui_OutputFcn',  @ShuangBaoGuangQianXi_OutputFcn, ...
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


% --- Executes just before ShuangBaoGuangQianXi is made visible.
function ShuangBaoGuangQianXi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ShuangBaoGuangQianXi (see VARARGIN)

% Choose default command line output for ShuangBaoGuangQianXi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('双曝光全息检测原理图.jpg');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');%显示图
axes(handles.axes3);
imshow('背景.bmp');%显示图
set(handles.QingKongPushbutton,'enable','off');%设置控件为灰色
set(handles.BaoCunPushbutton,'enable','off');%设置控件为灰色
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');%设置控件为灰色
set(handles.XEdit,'enable','off');%设置控件为灰色
set(handles.YEdit,'enable','off');%设置控件为灰色
set(handles.ZEdit,'enable','off');%设置控件为灰色
set(handles.QianXiTuDaoGuanChaMianEdit,'enable','off');%设置控件为灰色
set(handles.QianXiTuDaoGuanChaMianSlider,'enable','off');%设置控件为灰色
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ShuangBaoGuangQianXi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ShuangBaoGuangQianXi_OutputFcn(hObject, eventdata, handles) 
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


function WuDaoQianXiJiLuMianJuLiEdit_Callback(hObject, eventdata, handles)
% hObject    handle to WuDaoQianXiJiLuMianJuLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of WuDaoQianXiJiLuMianJuLiEdit as text
%        str2double(get(hObject,'String')) returns contents of WuDaoQianXiJiLuMianJuLiEdit as a double
var = str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function WuDaoQianXiJiLuMianJuLiEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WuDaoQianXiJiLuMianJuLiEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function WuDaoQianXiJiLuMianJuLiSlider_Callback(hObject, eventdata, handles)
% hObject    handle to WuDaoQianXiJiLuMianJuLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.WuDaoQianXiJiLuMianJuLiSlider,'Value');%获取物到全息记录面距离滑动条的值
set(handles.WuDaoQianXiJiLuMianJuLiEdit,'String',num2str(var));%将滑动条的值(物到全息记录面距离)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)    
    r=str2double(get(handles.ChouYuanShuEdit,'string'));
    c=r;%给出物面上的抽样数
    Uo=zeros(r,c);%预设平整物面
    Uo(floor(r/2-r/4):floor(r/2+r/4),floor(c/2-c/4):floor(c/2+c/4))=1;%生成矩形（变形前的物体）
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %构建变形后的物体
    Uoyp=Uo.*exp(1i.*peaks(r).*2);%在物体上叠加相位，模拟变形后的物体
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda; %赋值波长、波数
    zo=var;%物到全息记录面的距离,单位:米
    Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %用T-FFT算法完成全息图记录过程的计算
    xo=linspace(-Lo/2,Lo/2,r);
    yo=linspace(-Lo/2,Lo/2,c);
    [xo,yo]=meshgrid(xo,yo);
    F0=exp(1i*k*zo)/(1i*lamda*zo);
    F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
    fa=fft2(Uo); 
    fF1=fft2(F1);
    Fuf=fa.*fF1; 
    O=F0.*fftshift(ifft2(Fuf)); %在全息记录面上的物光场分布
    I=O.*conj(O);%全息记录面上的光强分布
    O=O./max(max(sqrt(I)));%调节光束比
    %figure,imshow(I,[]),colormap(pink),title('变形前物光的衍射图')
    %下面加入参考光
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与y轴间的夹角
    z0=0;%坐标原点
    R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    %下面计算参、物光在全息记录面上的干涉,得到全息图
    inter=O+R;%参、物光干涉
    I=inter.*conj(inter);%干涉得到全息图
    %figure,imshow(I,[]),title('变形前的全息图')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %计算物体变形后在全息记录面上的物光场分布
    fayp=fft2(Uoyp);
    Fufyp=fayp.*fF1; 
    Oyp=F0.*fftshift(ifft2(Fufyp));%在全息记录面上的物光场分布
    Iyp=Oyp.*conj(Oyp);%全息记录面上的光强分布
    %figure,imshow(Iyp,[]),colormap(pink),title('变形物光的衍射图')
    Oyp=Oyp./max(max(sqrt(Iyp)));%调节光束比
    interyp=Oyp+R;%参、物光干涉
    Iyp=interyp.*conj(interyp);%干涉得到全息图
    %figure,imshow(Iyp,[]),colormap(pink),title('变形后的全息图')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    IH=I+Iyp;%生成双曝光全息图
    axes(handles.axes2);%调用坐标
    imshow(Iyp,[])
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面用S-FFT算法再现全息像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));
    Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
    x=linspace(-Li/2,Li/2,r);y=linspace(-Li/2,Li/2,c);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    % 取再现照明光为记录参考光R
    holo=Lo/r*Lo/c*fftshift(fft2(IH.*F.*R));
    holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%用参考光R照明得到的再现像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
else
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        I1=imread([FilePath1,FileName1]);%第一幅数字全息图
        I1=double(I1(:,:,1)); %调入第一幅数字全息图
        I2=imread([FilePath2,FileName2]);%第二幅数字全息图
        I2=double(I2(:,:,1)); %调入第二幅数字全息图
        IH=I1+I2;%合成双曝光数字全息图
        axes(handles.axes2);%调用坐标
        imshow(IH,[])
        [r,c]=size(IH);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        Lox=c*3.2*10^(-6);
        Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
        xo=linspace(-Lox/2,Lox/2,c);
        yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
        [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
        %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光垂直入射C=1
        holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes3);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        I1=imread('第一幅数字全息图.bmp');
        I1=double(I1(:,:,1)); %调入第一幅数字全息图
        I2=imread('第二幅数字全息图.bmp');
        I2=double(I2(:,:,1)); %调入第二幅数字全息图
        IH=I1+I2;%合成双曝光数字全息图
        axes(handles.axes2);%调用坐标
        imshow(IH,[])
        [r,c]=size(IH);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        Lox=c*3.2*10^(-6);
        Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
        xo=linspace(-Lox/2,Lox/2,c);
        yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
        [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
        %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光垂直入射C=1
        holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes3);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    end
end

% --- Executes during object creation, after setting all properties.
function WuDaoQianXiJiLuMianJuLiSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WuDaoQianXiJiLuMianJuLiSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function QianXiTuDaoGuanChaMianEdit_Callback(hObject, eventdata, handles)
% hObject    handle to QianXiTuDaoGuanChaMianEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QianXiTuDaoGuanChaMianEdit as text
%        str2double(get(hObject,'String')) returns contents of QianXiTuDaoGuanChaMianEdit as a double
var = str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function QianXiTuDaoGuanChaMianEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QianXiTuDaoGuanChaMianEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function QianXiTuDaoGuanChaMianSlider_Callback(hObject, eventdata, handles)
% hObject    handle to QianXiTuDaoGuanChaMianSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.QianXiTuDaoGuanChaMianSlider,'Value');%获取全息图到观察面距离滑动条的值
set(handles.QianXiTuDaoGuanChaMianEdit,'String',num2str(var));%将滑动条的值(全息图到观察面距离)转换成字符串然后赋给波长文本框
try %对异常作出响应
    FileName1 = handles.FileName1;
    FilePath1 = handles.FilePath1;
    FileName2 = handles.FileName2;
    FilePath2 = handles.FilePath2;
    I1=imread([FilePath1,FileName1]);%第一幅数字全息图
    I1=double(I1(:,:,1)); %调入第一幅数字全息图
    I2=imread([FilePath2,FileName2]);%第二幅数字全息图
    I2=double(I2(:,:,1)); %调入第二幅数字全息图
    IH=I1+I2;%合成双曝光数字全息图
    axes(handles.axes2);%调用坐标
    imshow(IH,[])
    [r,c]=size(IH);
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    Lox=c*3.2*10^(-6);
    Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
    xo=linspace(-Lox/2,Lox/2,c);
    yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
    [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
    %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2));     
    %下面加入再现照明光
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与y轴间的夹角
    z0=0;%坐标原点
    R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0.*R;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
catch
       errordlg('没有导入双曝光全息图或导入的不全，请重新导入两幅全息图','警告');%操作不合理，提示
    return;
end

% --- Executes during object creation, after setting all properties.
function QianXiTuDaoGuanChaMianSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QianXiTuDaoGuanChaMianSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function XEdit_Callback(hObject, eventdata, handles)
% hObject    handle to XEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XEdit as text
%        str2double(get(hObject,'String')) returns contents of XEdit as a double
var = str2double(get(handles.XEdit,'string'));
if(var==0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

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
var = str2double(get(handles.YEdit,'string'));
if(var==0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

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
var = str2double(get(handles.ZEdit,'string'));
if(var==0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

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



function ChiCunEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ChiCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ChiCunEdit as text
%        str2double(get(hObject,'String')) returns contents of ChiCunEdit as a double
var = str2double(get(handles.ChiCunEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function ChiCunEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ChiCunEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ChiCunSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ChiCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.ChiCunSlider,'Value');%获取物面上的抽样数滑动条的值
set(handles.ChiCunEdit,'String',num2str(var));%将滑动条的值(物面上的抽样数)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    r=str2double(get(handles.ChouYuanShuEdit,'string'));
    c=r;%给出物面上的抽样数
    Uo=zeros(r,c);%预设平整物面
    Uo(floor(r/2-r/4):floor(r/2+r/4),floor(c/2-c/4):floor(c/2+c/4))=1;%生成矩形（变形前的物体）
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %构建变形后的物体
    Uoyp=Uo.*exp(1i.*peaks(r).*2);%在物体上叠加相位，模拟变形后的物体
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda; %赋值波长、波数
    zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息记录面的距离,单位:米
    Lo=var;%赋值衍射面(物)的尺寸,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %figure,imshow(cos(angle(Uoyp./Uo)),[])
    %title('变形前后物光场之间应该有的干涉条纹')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %用T-FFT算法完成全息图记录过程的计算
    xo=linspace(-Lo/2,Lo/2,r);
    yo=linspace(-Lo/2,Lo/2,c);
    [xo,yo]=meshgrid(xo,yo);
    F0=exp(1i*k*zo)/(1i*lamda*zo);
    F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
    fa=fft2(Uo); 
    fF1=fft2(F1);
    Fuf=fa.*fF1; 
    O=F0.*fftshift(ifft2(Fuf)); %在全息记录面上的物光场分布
    I=O.*conj(O);%全息记录面上的光强分布
    O=O./max(max(sqrt(I)));%调节光束比
    %figure,imshow(I,[]),colormap(pink),title('变形前物光的衍射图')
    %下面加入参考光
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与y轴间的夹角
    z0=0;%坐标原点
    R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    %下面计算参、物光在全息记录面上的干涉,得到全息图
    inter=O+R;%参、物光干涉
    I=inter.*conj(inter);%干涉得到全息图
    %figure,imshow(I,[]),title('变形前的全息图')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %计算物体变形后在全息记录面上的物光场分布
    fayp=fft2(Uoyp);
    Fufyp=fayp.*fF1; 
    Oyp=F0.*fftshift(ifft2(Fufyp));%在全息记录面上的物光场分布
    Iyp=Oyp.*conj(Oyp);%全息记录面上的光强分布
    %figure,imshow(Iyp,[]),colormap(pink),title('变形物光的衍射图')
    Oyp=Oyp./max(max(sqrt(Iyp)));%调节光束比
    interyp=Oyp+R;%参、物光干涉
    Iyp=interyp.*conj(interyp);%干涉得到全息图
    %figure,imshow(Iyp,[]),colormap(pink),title('变形后的全息图')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    IH=I+Iyp;%生成双曝光全息图
    axes(handles.axes2);%调用坐标
    imshow(Iyp,[])
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面用S-FFT算法再现全息像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));
    Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
    x=linspace(-Li/2,Li/2,r);y=linspace(-Li/2,Li/2,c);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    % 取再现照明光为记录参考光R
    holo=Lo/r*Lo/c*fftshift(fft2(IH.*F.*R));
    holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%用参考光R照明得到的再现像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
else
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        I1=imread([FilePath1,FileName1]);%第一幅数字全息图
        I1=double(I1(:,:,1)); %调入第一幅数字全息图
        I2=imread([FilePath2,FileName2]);%第二幅数字全息图
        I2=double(I2(:,:,1)); %调入第二幅数字全息图
        IH=I1+I2;%合成双曝光数字全息图
        axes(handles.axes2);%调用坐标
        imshow(IH,[])
        [r,c]=size(IH);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        Lox=c*3.2*10^(-6);
        Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
        xo=linspace(-Lox/2,Lox/2,c);
        yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
        [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
        %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光垂直入射C=1
        holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes3);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        I1=imread('第一幅数字全息图.bmp');
        I1=double(I1(:,:,1)); %调入第一幅数字全息图
        I2=imread('第二幅数字全息图.bmp');
        I2=double(I2(:,:,1)); %调入第二幅数字全息图
        IH=I1+I2;%合成双曝光数字全息图
        axes(handles.axes2);%调用坐标
        imshow(IH,[])
        [r,c]=size(IH);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        Lox=c*3.2*10^(-6);
        Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
        xo=linspace(-Lox/2,Lox/2,c);
        yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
        [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
        %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光垂直入射C=1
        holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes3);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    end
end

% --- Executes during object creation, after setting all properties.
function ChiCunSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ChiCunSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function ChouYuanShuEdit_Callback(hObject, eventdata, handles)
% hObject    handle to ChouYuanShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ChouYuanShuEdit as text
%        str2double(get(hObject,'String')) returns contents of ChouYuanShuEdit as a double
var = str2double(get(handles.ChouYuanShuEdit,'string'));
if((var<0) || ((0<mod(var,2))&&(mod(var,2)<1)))
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function ChouYuanShuEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ChouYuanShuEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ChouYuanShuSlider_Callback(hObject, eventdata, handles)
% hObject    handle to ChouYuanShuSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=floor(get(handles.ChouYuanShuSlider,'Value'));%获取物面上的抽样数滑动条的值
set(handles.ChouYuanShuEdit,'String',num2str(var));%将滑动条的值(物面上的抽样数)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    r=var;
    c=r;%给出物面上的抽样数
    Uo=zeros(r,c);%预设平整物面
    Uo(floor(r/2-r/4):floor(r/2+r/4),floor(c/2-c/4):floor(c/2+c/4))=1;%生成矩形（变形前的物体）
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %构建变形后的物体
    Uoyp=Uo.*exp(1i.*peaks(r).*2);%在物体上叠加相位，模拟变形后的物体
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda; %赋值波长、波数
    zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息记录面的距离,单位:米
    Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %figure,imshow(cos(angle(Uoyp./Uo)),[])
    %title('变形前后物光场之间应该有的干涉条纹')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %用T-FFT算法完成全息图记录过程的计算
    xo=linspace(-Lo/2,Lo/2,r);
    yo=linspace(-Lo/2,Lo/2,c);
    [xo,yo]=meshgrid(xo,yo);
    F0=exp(1i*k*zo)/(1i*lamda*zo);
    F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
    fa=fft2(Uo); 
    fF1=fft2(F1);
    Fuf=fa.*fF1; 
    O=F0.*fftshift(ifft2(Fuf)); %在全息记录面上的物光场分布
    I=O.*conj(O);%全息记录面上的光强分布
    O=O./max(max(sqrt(I)));%调节光束比
    %figure,imshow(I,[]),colormap(pink),title('变形前物光的衍射图')
    %下面加入参考光
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与y轴间的夹角
    z0=0;%坐标原点
    R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    %下面计算参、物光在全息记录面上的干涉,得到全息图
    inter=O+R;%参、物光干涉
    I=inter.*conj(inter);%干涉得到全息图
    %figure,imshow(I,[]),title('变形前的全息图')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %计算物体变形后在全息记录面上的物光场分布
    fayp=fft2(Uoyp);
    Fufyp=fayp.*fF1; 
    Oyp=F0.*fftshift(ifft2(Fufyp));%在全息记录面上的物光场分布
    Iyp=Oyp.*conj(Oyp);%全息记录面上的光强分布
    %figure,imshow(Iyp,[]),colormap(pink),title('变形物光的衍射图')
    Oyp=Oyp./max(max(sqrt(Iyp)));%调节光束比
    interyp=Oyp+R;%参、物光干涉
    Iyp=interyp.*conj(interyp);%干涉得到全息图
    %figure,imshow(Iyp,[]),colormap(pink),title('变形后的全息图')
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    IH=I+Iyp;%生成双曝光全息图
    axes(handles.axes2);%调用坐标
    imshow(Iyp,[])
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    %下面用S-FFT算法再现全息像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));
    Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
    x=linspace(-Li/2,Li/2,r);y=linspace(-Li/2,Li/2,c);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
    % 取再现照明光为记录参考光R
    holo=Lo/r*Lo/c*fftshift(fft2(IH.*F.*R));
    holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%用参考光R照明得到的再现像
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
else
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        I1=imread([FilePath1,FileName1]);%第一幅数字全息图
        I1=double(I1(:,:,1)); %调入第一幅数字全息图
        I2=imread([FilePath2,FileName2]);%第二幅数字全息图
        I2=double(I2(:,:,1)); %调入第二幅数字全息图
        IH=I1+I2;%合成双曝光数字全息图
        axes(handles.axes2);%调用坐标
        imshow(IH,[])
        [r,c]=size(IH);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        Lox=c*3.2*10^(-6);
        Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
        xo=linspace(-Lox/2,Lox/2,c);
        yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
        [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
        %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光垂直入射C=1
        holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes3);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        I1=imread('第一幅数字全息图.bmp');
        I1=double(I1(:,:,1)); %调入第一幅数字全息图
        I2=imread('第二幅数字全息图.bmp');
        I2=double(I2(:,:,1)); %调入第二幅数字全息图
        IH=I1+I2;%合成双曝光数字全息图
        axes(handles.axes2);%调用坐标
        imshow(IH,[])
        [r,c]=size(IH);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        Lox=c*3.2*10^(-6);
        Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
        xo=linspace(-Lox/2,Lox/2,c);
        yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
        [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
        %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光垂直入射C=1
        holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes3);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    end
end

% --- Executes during object creation, after setting all properties.
function ChouYuanShuSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ChouYuanShuSlider (see GCBO)
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
try %对异常作出响应
    FileName1 = handles.FileName1;
    FilePath1 = handles.FilePath1;
    FileName2 = handles.FileName2;
    FilePath2 = handles.FilePath2;
    I1=imread([FilePath1,FileName1]);%第一幅数字全息图
    I1=double(I1(:,:,1)); %调入第一幅数字全息图
    I2=imread([FilePath2,FileName2]);%第二幅数字全息图
    I2=double(I2(:,:,1)); %调入第二幅数字全息图
    IH=I1+I2;%合成双曝光数字全息图
    axes(handles.axes2);%调用坐标
    imshow(IH,[])
    [r,c]=size(IH);
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    Lox=c*3.2*10^(-6);
    Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
    xo=linspace(-Lox/2,Lox/2,c);
    yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
    [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
    %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2));     
    %下面加入再现照明光
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与y轴间的夹角
    z0=0;%坐标原点
    R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0.*R;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
catch
       errordlg('没有导入双曝光全息图或导入的不全，请重新导入两幅全息图','警告');%操作不合理，提示
    return;
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


% --- Executes on button press in ShuanBaoGuangQiangXiushbutton.
function ShuanBaoGuangQiangXiushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ShuanBaoGuangQiangXiushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.QingKongPushbutton,'enable','on');%设置控件为灰色
set(handles.BaoCunPushbutton,'enable','on');%设置控件为灰色
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');%设置控件为灰色
set(handles.XEdit,'enable','on');%设置控件为灰色
set(handles.YEdit,'enable','on');%设置控件为灰色
set(handles.ZEdit,'enable','on');%设置控件为灰色
set(handles.QianXiTuDaoGuanChaMianEdit,'enable','on');%设置控件为灰色
set(handles.QianXiTuDaoGuanChaMianSlider,'enable','on');%设置控件为灰色
try %对异常作出响应
    FileName1 = handles.FileName1;
    FilePath1 = handles.FilePath1;
    FileName2 = handles.FileName2;
    FilePath2 = handles.FilePath2;
    I1=imread([FilePath1,FileName1]);%第一幅数字全息图
    I1=double(I1(:,:,1)); %调入第一幅数字全息图
    I2=imread([FilePath2,FileName2]);%第二幅数字全息图
    I2=double(I2(:,:,1)); %调入第二幅数字全息图
    IH=I1+I2;%合成双曝光数字全息图
    axes(handles.axes2);%调用坐标
    imshow(IH,[])
    [r,c]=size(IH);
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    Lox=c*3.2*10^(-6);
    Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
    xo=linspace(-Lox/2,Lox/2,c);
    yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
    [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
    %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2));     
    %下面加入再现照明光
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与y轴间的夹角
    z0=0;%坐标原点
    R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0.*R;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
catch
       errordlg('没有分别导入两张全息图或导入的全息图尺寸太大，请重新导入两幅全息图','警告');%操作不合理，提示
    return;
end

    
% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域

% --- Executes on button press in ZaiXianPushbutton.
function ZaiXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ZaiXianPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try %对异常作出响应
    FileName1 = handles.FileName1;
    FilePath1 = handles.FilePath1;
    FileName2 = handles.FileName2;
    FilePath2 = handles.FilePath2;
    I1=imread([FilePath1,FileName1]);%第一幅数字全息图
    I1=double(I1(:,:,1)); %调入第一幅数字全息图
    I2=imread([FilePath2,FileName2]);%第二幅数字全息图
    I2=double(I2(:,:,1)); %调入第二幅数字全息图
    IH=I1+I2;%合成双曝光数字全息图
    axes(handles.axes2);%调用坐标
    imshow(IH,[])
    [r,c]=size(IH);
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    Lox=c*3.2*10^(-6);
    Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
    xo=linspace(-Lox/2,Lox/2,c);
    yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
    [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
    %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
    % 取再现照明光垂直入射C=1
    holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
catch
    I1=imread('第一幅数字全息图.bmp');
    I1=double(I1(:,:,1)); %调入第一幅数字全息图
    I2=imread('第二幅数字全息图.bmp');
    I2=double(I2(:,:,1)); %调入第二幅数字全息图
    IH=I1+I2;%合成双曝光数字全息图
    axes(handles.axes2);%调用坐标
    imshow(IH,[])
    [r,c]=size(IH);
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    Lox=c*3.2*10^(-6);
    Loy=r*3.2*10^(-6);%给出全息图的尺寸,单位:米
    xo=linspace(-Lox/2,Lox/2,c);
    yo=linspace(-Loy/2,Loy/2,r);%全息图的坐标
    [xo,yo]=meshgrid(xo,yo);%全息图的坐标网格
    %zo=str2double(get(handles.WuDaoQianXiJiLuMianJuLiEdit,'string'));%物到全息面的距离,单位:米
    %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox;%给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
    % 取再现照明光垂直入射C=1
    holo=Lox/c*Loy/r*fftshift(fft2(IH.*F*1)); holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes3);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles2= ShuangBaoGuangQianXiYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --- Executes on button press in DaoRu1Ppushbutton.
function DaoRu1Ppushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DaoRu1Ppushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName1 , FilePath1]=uigetfile({'*.jpg';'*.png';'*.bmp';'*.*'},'文件');%打开文件夹
if isequal(FileName1 ,0) || isequal(FilePath1,0)%判断是否选择了文件
    errordlg('没有选择相关的文件，请您重新操作','警告');%没选择文件，则报错
    return;
end
handles.FileName1=FileName1;
handles.FilePath1=FilePath1;
guidata(hObject, handles)%函数之间传递参数

% --- Executes on button press in DaoRuP2ushbutton.
function DaoRuP2ushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DaoRuP2ushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName2 , FilePath2]=uigetfile({'*.jpg';'*.png';'*.bmp';'*.*'},'文件');%打开文件夹
if isequal(FileName2 ,0) || isequal(FilePath2,0)%判断是否选择了文件
    errordlg('没有选择相关的文件，请您重新操作','警告');%没选择文件，则报错
    return;
end
handles.FileName2=FileName2;
handles.FilePath2=FilePath2;
guidata(hObject, handles)%函数之间传递参数


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
