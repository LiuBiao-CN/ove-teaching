function varargout = LiZhouQanXiYvZaiXian(varargin)
% LIZHOUQANXIYVZAIXIAN MATLAB code for LiZhouQanXiYvZaiXian.fig
%      LIZHOUQANXIYVZAIXIAN, by itself, creates a new LIZHOUQANXIYVZAIXIAN or raises the existing
%      singleton*.
%
%      H = LIZHOUQANXIYVZAIXIAN returns the handle to a new LIZHOUQANXIYVZAIXIAN or the handle to
%      the existing singleton*.
%
%      LIZHOUQANXIYVZAIXIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIZHOUQANXIYVZAIXIAN.M with the given input arguments.
%
%      LIZHOUQANXIYVZAIXIAN('Property','Value',...) creates a new LIZHOUQANXIYVZAIXIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LiZhouQanXiYvZaiXian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LiZhouQanXiYvZaiXian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LiZhouQanXiYvZaiXian

% Last Modified by GUIDE v2.5 25-Mar-2024 14:00:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LiZhouQanXiYvZaiXian_OpeningFcn, ...
                   'gui_OutputFcn',  @LiZhouQanXiYvZaiXian_OutputFcn, ...
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


% --- Executes just before LiZhouQanXiYvZaiXian is made visible.
function LiZhouQanXiYvZaiXian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LiZhouQanXiYvZaiXian (see VARARGIN)

% Choose default command line output for LiZhouQanXiYvZaiXian
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axes(handles.axes1);
imshow('离轴全息记录与再现原理图.JPG');%显示原理图
axes(handles.axes2);
imshow('背景.bmp');
axes(handles.axes3);
imshow('背景.bmp');
axes(handles.axes4);
imshow('背景.bmp');
set(handles.BoChangEdit,'enable','off');%设置控件为灰色
set(handles.BoChangSlider,'enable','off');
set(handles.WuDaoXiangEdit,'enable','off');
set(handles.WuDaoXiangSlider,'enable','off');
set(handles.ChiCunEdit,'enable','off');
set(handles.ChiCunSlider,'enable','off');
set(handles.QianXiTuDaoGuanChaMianEdit,'enable','off');
set(handles.QianXiTuDaoGuanChaMianSlider,'enable','off');
set(handles.QingKongPushbutton,'enable','off');
set(handles.BaoCunPushbutton,'enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LiZhouQanXiYvZaiXian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LiZhouQanXiYvZaiXian_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in JuLuZaiXianPushbutton.
function JuLuZaiXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to JuLuZaiXianPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.BoChangEdit,'enable','on');%设置控件为灰色
set(handles.BoChangSlider,'enable','on');
set(handles.QianXiTuDaoGuanChaMianEdit,'enable','on');
set(handles.QianXiTuDaoGuanChaMianSlider,'enable','on');
set(handles.QingKongPushbutton,'enable','on');
set(handles.BaoCunPushbutton,'enable','on');
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        set(handles.WuDaoXiangEdit,'enable','on');
        if(get(handles.WuDaoXiangEdit,'string') == '无')
            set(handles.WuDaoXiangEdit,'string','0.3');
        end
        set(handles.WuDaoXiangSlider,'enable','on');
        set(handles.ChiCunEdit,'enable','on');
        if(get(handles.ChiCunEdit,'string') == '无')
            set(handles.ChiCunEdit,'string','5');
        end
        set(handles.ChiCunSlider,'enable','on');
        set(handles.XEdit,'enable','on');
        if(get(handles.XEdit,'string') == '无')
            set(handles.XEdit,'string','2');
        end
        set(handles.YEdit,'enable','on');
        if(get(handles.YEdit,'string') == '无')
            set(handles.YEdit,'string','2.02');
        end
        set(handles.ZEdit,'enable','on');
        if(get(handles.ZEdit,'string') == '无')
            set(handles.ZEdit,'string','2');
        end
        aa=imread([FilePath1,FileName1]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        Uo=ac;%调入作为物的图像
        Uo=double(Uo(:,:,1));%取第一层，并转为双精度
        axes(handles.axes2);%调用坐标
        imshow(Uo,[])%原始像
        [r,c]=size(Uo);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        zo=str2double(get(handles.WuDaoXiangEdit,'string'));%物到全息记录面的距离,单位:米
        Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %用T-FFT算法完成全息图记录过程的计算
        xo=linspace(-Lo/2,Lo/2,c);
        yo=linspace(-Lo/2,Lo/2,r);
        [xo,yo]=meshgrid(xo,yo);
        F0=exp(1i*k*zo)/(1i*lamda*zo);
        F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
        fa=fft2(Uo); 
        fF1=fft2(F1);
        Fuf=fa.*fF1*Lo/r*Lo/c; 
        O=F0.*fftshift(ifft2(Fuf));%在全息记录面上的光场分布
        I=O.*conj(O);%全息记录面上的光强分布
        %figure,imshow(I,[]),colormap(pink),title('衍射图')
        %下面加入参考光
        nx=str2double(get(handles.XEdit,'string'));
        ny=str2double(get(handles.YEdit,'string'));
        nz=str2double(get(handles.ZEdit,'string'));
        alpha=pi/nx;%参考光与x轴间的夹角
        beita=pi/ny;%参考光与y轴间的夹角
        gama=pi/nz;%参考光与z轴间的夹角
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        %下面计算参、物光在全息记录面上的干涉,得到全息图
        inter=O./max(sqrt(I(:)))+R;%调节光束比，并使参、物光干涉
        II= inter.*conj(inter);%干涉得到全息图
        axes(handles.axes3);%调用坐标
        imshow(II,[])%全息图
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面计算再现
        %先用S-FFT算法再现全息像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息图到观察面的距离,单位:米
        Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
        x=linspace(-Li/2,Li/2,c);
        y=linspace(-Li/2,Li/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
        % 取再现照明光垂直入射Rz
        holo=Lo/c*Lo/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入衍射屏图像或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
else
    axes(handles.axes2);%调用坐标
    imshow('背景.bmp')
    try %对异常作出响应
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        set(handles.WuDaoXiangEdit,'string','无');
        set(handles.WuDaoXiangSlider,'string','无');
        set(handles.ChiCunEdit,'string','无');
        set(handles.ChiCunSlider,'string','无');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.ZEdit,'string','无');
        set(handles.WuDaoXiangEdit,'enable','off');
        set(handles.WuDaoXiangSlider,'enable','off');
        set(handles.ChiCunEdit,'enable','off');
        set(handles.ChiCunSlider,'enable','off');
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.ZEdit,'enable','off');
        II=imread([FilePath2,FileName2]);%读入数字全息图
        II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
        %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
        axes(handles.axes3);%调用坐标
        imshow(II,[])
        %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
        % figure
        % imshow(FF,[0,max(max(FF))/200])
        % title('计算全息图的频谱')%显示计算全息图的频谱
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        [r,c]=size(II);%计算全息图的大小(像素)
        Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
        yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
        [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光R
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入需要重构的数字全息图或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
end


% --- Executes on button press in QingKongPushbutton.
function QingKongPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to QingKongPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2);%清空图形区域
cla(handles.axes3);%清空图形区域
cla(handles.axes4);%清空图形区域


% --- Executes on button press in ZaiXianPushbutton.
function ZaiXianPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ZaiXianPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try %对异常作出响应
    FileName2 = handles.FileName2;
    FilePath2 = handles.FilePath2;
    II=imread([FilePath2,FileName2]);%读入数字全息图
    II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
    %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
    axes(handles.axes3);%调用坐标
    imshow(II,[])
    %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
    % figure
    % imshow(FF,[0,max(max(FF))/200])
    % title('计算全息图的频谱')%显示计算全息图的频谱
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    [r,c]=size(II);%计算全息图的大小(像素)
    Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
    Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
    xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
    yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
    [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
    % 取再现照明光垂直入射C=1
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与z轴间的夹角
    z0=0;%z轴方向上的坐标原点
    Rz=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes4);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
catch
    II=imread('实验得到的数字全息图.bmp');%读入数字全息图
    II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
    %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
    axes(handles.axes3);%调用坐标
    imshow(II,[])
    %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
    % figure
    % imshow(FF,[0,max(max(FF))/200])
    % title('计算全息图的频谱')%显示计算全息图的频谱
    lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
    k=2*pi/lamda;%赋值波长、波数
    [r,c]=size(II);%计算全息图的大小(像素)
    Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
    Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
    xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
    yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
    [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
    %下面用S-FFT算法重构再现像
    zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
    Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
    Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
    x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
    [x,y]=meshgrid(x,y);
    F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
    F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
    % 取再现照明光垂直入射C=1
    nx=str2double(get(handles.XEdit,'string'));
    ny=str2double(get(handles.YEdit,'string'));
    nz=str2double(get(handles.ZEdit,'string'));
    alpha=pi/nx;%参考光与x轴间的夹角
    beita=pi/ny;%参考光与y轴间的夹角
    gama=pi/nz;%参考光与z轴间的夹角
    z0=0;%z轴方向上的坐标原点
    Rz=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
    holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
    Ii=holo.*conj(holo);
    axes(handles.axes4);%调用坐标
    imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
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
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        set(handles.WuDaoXiangEdit,'enable','on');
        if(get(handles.WuDaoXiangEdit,'string') == '无')
            set(handles.WuDaoXiangEdit,'string','0.3');
        end
        set(handles.WuDaoXiangSlider,'enable','on');
        set(handles.ChiCunEdit,'enable','on');
        if(get(handles.ChiCunEdit,'string') == '无')
            set(handles.ChiCunEdit,'string','5');
        end
        set(handles.ChiCunSlider,'enable','on');
        set(handles.XEdit,'enable','on');
        if(get(handles.XEdit,'string') == '无')
            set(handles.XEdit,'string','2');
        end
        set(handles.YEdit,'enable','on');
        if(get(handles.YEdit,'string') == '无')
            set(handles.YEdit,'string','2.02');
        end
        set(handles.ZEdit,'enable','on');
        if(get(handles.ZEdit,'string') == '无')
            set(handles.ZEdit,'string','2');
        end
        aa=imread([FilePath1,FileName1]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        Uo=ac;%调入作为物的图像
        Uo=double(Uo(:,:,1));%取第一层，并转为双精度
        axes(handles.axes2);%调用坐标
        imshow(Uo,[])%原始像
        [r,c]=size(Uo);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        zo=str2double(get(handles.WuDaoXiangEdit,'string'));%物到全息记录面的距离,单位:米
        Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %用T-FFT算法完成全息图记录过程的计算
        xo=linspace(-Lo/2,Lo/2,c);
        yo=linspace(-Lo/2,Lo/2,r);
        [xo,yo]=meshgrid(xo,yo);
        F0=exp(1i*k*zo)/(1i*lamda*zo);
        F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
        fa=fft2(Uo); 
        fF1=fft2(F1);
        Fuf=fa.*fF1*Lo/r*Lo/c; 
        O=F0.*fftshift(ifft2(Fuf));%在全息记录面上的光场分布
        I=O.*conj(O);%全息记录面上的光强分布
        %figure,imshow(I,[]),colormap(pink),title('衍射图')
        %下面加入参考光
        nx=str2double(get(handles.XEdit,'string'));
        ny=str2double(get(handles.YEdit,'string'));
        nz=str2double(get(handles.ZEdit,'string'));
        alpha=pi/nx;%参考光与x轴间的夹角
        beita=pi/ny;%参考光与y轴间的夹角
        gama=pi/nz;%参考光与z轴间的夹角
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        %下面计算参、物光在全息记录面上的干涉,得到全息图
        inter=O./max(sqrt(I(:)))+R;%调节光束比，并使参、物光干涉
        II= inter.*conj(inter);%干涉得到全息图
        axes(handles.axes3);%调用坐标
        imshow(II,[])%全息图
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面计算再现
        %先用S-FFT算法再现全息像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息图到观察面的距离,单位:米
        Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
        x=linspace(-Li/2,Li/2,c);
        y=linspace(-Li/2,Li/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
        % 取再现照明光垂直入射Rz
        holo=Lo/c*Lo/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入衍射屏图像或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
else
    axes(handles.axes2);%调用坐标
    imshow('背景.bmp')
    try %对异常作出响应
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        set(handles.WuDaoXiangEdit,'string','无');
        set(handles.WuDaoXiangSlider,'string','无');
        set(handles.ChiCunEdit,'string','无');
        set(handles.ChiCunSlider,'string','无');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.ZEdit,'string','无');
        set(handles.WuDaoXiangEdit,'enable','off');
        set(handles.WuDaoXiangSlider,'enable','off');
        set(handles.ChiCunEdit,'enable','off');
        set(handles.ChiCunSlider,'enable','off');
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.ZEdit,'enable','off');
        II=imread([FilePath2,FileName2]);%读入数字全息图
        II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
        %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
        axes(handles.axes3);%调用坐标
        imshow(II,[])
        %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
        % figure
        % imshow(FF,[0,max(max(FF))/200])
        % title('计算全息图的频谱')%显示计算全息图的频谱
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        [r,c]=size(II);%计算全息图的大小(像素)
        Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
        yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
        [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光R
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入需要重构的数字全息图或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
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
var = str2double(get(handles.BoChangEdit,'string'));
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
var=get(handles.ChiCunSlider,'Value');%获取衍射面(物)的尺寸滑动条的值
set(handles.ChiCunEdit,'String',num2str(var));%将滑动条的值(衍射面(物)的尺寸)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        set(handles.WuDaoXiangEdit,'enable','on');
        if(get(handles.WuDaoXiangEdit,'string') == '无')
            set(handles.WuDaoXiangEdit,'string','0.3');
        end
        set(handles.WuDaoXiangSlider,'enable','on');
        set(handles.ChiCunEdit,'enable','on');
        if(get(handles.ChiCunEdit,'string') == '无')
            set(handles.ChiCunEdit,'string','5');
        end
        set(handles.ChiCunSlider,'enable','on');
        set(handles.XEdit,'enable','on');
        if(get(handles.XEdit,'string') == '无')
            set(handles.XEdit,'string','2');
        end
        set(handles.YEdit,'enable','on');
        if(get(handles.YEdit,'string') == '无')
            set(handles.YEdit,'string','2.02');
        end
        set(handles.ZEdit,'enable','on');
        if(get(handles.ZEdit,'string') == '无')
            set(handles.ZEdit,'string','2');
        end
        aa=imread([FilePath1,FileName1]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        Uo=ac;%调入作为物的图像
        Uo=double(Uo(:,:,1));%取第一层，并转为双精度
        axes(handles.axes2);%调用坐标
        imshow(Uo,[])%原始像
        [r,c]=size(Uo);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        zo=str2double(get(handles.WuDaoXiangEdit,'string'));%物到全息记录面的距离,单位:米
        Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %用T-FFT算法完成全息图记录过程的计算
        xo=linspace(-Lo/2,Lo/2,c);
        yo=linspace(-Lo/2,Lo/2,r);
        [xo,yo]=meshgrid(xo,yo);
        F0=exp(1i*k*zo)/(1i*lamda*zo);
        F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
        fa=fft2(Uo); 
        fF1=fft2(F1);
        Fuf=fa.*fF1*Lo/r*Lo/c; 
        O=F0.*fftshift(ifft2(Fuf));%在全息记录面上的光场分布
        I=O.*conj(O);%全息记录面上的光强分布
        %figure,imshow(I,[]),colormap(pink),title('衍射图')
        %下面加入参考光
        nx=str2double(get(handles.XEdit,'string'));
        ny=str2double(get(handles.YEdit,'string'));
        nz=str2double(get(handles.ZEdit,'string'));
        alpha=pi/nx;%参考光与x轴间的夹角
        beita=pi/ny;%参考光与y轴间的夹角
        gama=pi/nz;%参考光与z轴间的夹角
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        %下面计算参、物光在全息记录面上的干涉,得到全息图
        inter=O./max(sqrt(I(:)))+R;%调节光束比，并使参、物光干涉
        II= inter.*conj(inter);%干涉得到全息图
        axes(handles.axes3);%调用坐标
        imshow(II,[])%全息图
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面计算再现
        %先用S-FFT算法再现全息像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息图到观察面的距离,单位:米
        Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
        x=linspace(-Li/2,Li/2,c);
        y=linspace(-Li/2,Li/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
        % 取再现照明光垂直入射Rz
        holo=Lo/c*Lo/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入衍射屏图像或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
else
    axes(handles.axes2);%调用坐标
    imshow('背景.bmp')
    try %对异常作出响应
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        set(handles.WuDaoXiangEdit,'string','无');
        set(handles.WuDaoXiangSlider,'string','无');
        set(handles.ChiCunEdit,'string','无');
        set(handles.ChiCunSlider,'string','无');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.ZEdit,'string','无');
        set(handles.WuDaoXiangEdit,'enable','off');
        set(handles.WuDaoXiangSlider,'enable','off');
        set(handles.ChiCunEdit,'enable','off');
        set(handles.ChiCunSlider,'enable','off');
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.ZEdit,'enable','off');
        II=imread([FilePath2,FileName2]);%读入数字全息图
        II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
        %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
        axes(handles.axes3);%调用坐标
        imshow(II,[])
        %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
        % figure
        % imshow(FF,[0,max(max(FF))/200])
        % title('计算全息图的频谱')%显示计算全息图的频谱
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        [r,c]=size(II);%计算全息图的大小(像素)
        Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
        yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
        [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光R
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入需要重构的数字全息图或图像太大，请重新读入','警告');%操作不合理，报错
        return;
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



function WuDaoXiangEdit_Callback(hObject, eventdata, handles)
% hObject    handle to WuDaoXiangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of WuDaoXiangEdit as text
%        str2double(get(hObject,'String')) returns contents of WuDaoXiangEdit as a double
var = str2double(get(handles.WuDaoXiangEdit,'string'));
if(var<0)
    errordlg('输入的数据没意义，请您重新输入','警告');%操作不合理，报错
end

% --- Executes during object creation, after setting all properties.
function WuDaoXiangEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WuDaoXiangEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function WuDaoXiangSlider_Callback(hObject, eventdata, handles)
% hObject    handle to WuDaoXiangSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
var=get(handles.WuDaoXiangSlider,'Value');%获取物到全息记录面距离滑动条的值
set(handles.WuDaoXiangEdit,'String',num2str(var));%将滑动条的值(物到全息记录面距离)转换成字符串然后赋给波长文本框
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        set(handles.WuDaoXiangEdit,'enable','on');
        if(get(handles.WuDaoXiangEdit,'string') == '无')
            set(handles.WuDaoXiangEdit,'string','0.3');
        end
        set(handles.WuDaoXiangSlider,'enable','on');
        set(handles.ChiCunEdit,'enable','on');
        if(get(handles.ChiCunEdit,'string') == '无')
            set(handles.ChiCunEdit,'string','5');
        end
        set(handles.ChiCunSlider,'enable','on');
        set(handles.XEdit,'enable','on');
        if(get(handles.XEdit,'string') == '无')
            set(handles.XEdit,'string','2');
        end
        set(handles.YEdit,'enable','on');
        if(get(handles.YEdit,'string') == '无')
            set(handles.YEdit,'string','2.02');
        end
        set(handles.ZEdit,'enable','on');
        if(get(handles.ZEdit,'string') == '无')
            set(handles.ZEdit,'string','2');
        end
        aa=imread([FilePath1,FileName1]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        Uo=ac;%调入作为物的图像
        Uo=double(Uo(:,:,1));%取第一层，并转为双精度
        axes(handles.axes2);%调用坐标
        imshow(Uo,[])%原始像
        [r,c]=size(Uo);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        zo=str2double(get(handles.WuDaoXiangEdit,'string'));%物到全息记录面的距离,单位:米
        Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %用T-FFT算法完成全息图记录过程的计算
        xo=linspace(-Lo/2,Lo/2,c);
        yo=linspace(-Lo/2,Lo/2,r);
        [xo,yo]=meshgrid(xo,yo);
        F0=exp(1i*k*zo)/(1i*lamda*zo);
        F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
        fa=fft2(Uo); 
        fF1=fft2(F1);
        Fuf=fa.*fF1*Lo/r*Lo/c; 
        O=F0.*fftshift(ifft2(Fuf));%在全息记录面上的光场分布
        I=O.*conj(O);%全息记录面上的光强分布
        %figure,imshow(I,[]),colormap(pink),title('衍射图')
        %下面加入参考光
        nx=str2double(get(handles.XEdit,'string'));
        ny=str2double(get(handles.YEdit,'string'));
        nz=str2double(get(handles.ZEdit,'string'));
        alpha=pi/nx;%参考光与x轴间的夹角
        beita=pi/ny;%参考光与y轴间的夹角
        gama=pi/nz;%参考光与z轴间的夹角
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        %下面计算参、物光在全息记录面上的干涉,得到全息图
        inter=O./max(sqrt(I(:)))+R;%调节光束比，并使参、物光干涉
        II= inter.*conj(inter);%干涉得到全息图
        axes(handles.axes3);%调用坐标
        imshow(II,[])%全息图
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面计算再现
        %先用S-FFT算法再现全息像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息图到观察面的距离,单位:米
        Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
        x=linspace(-Li/2,Li/2,c);
        y=linspace(-Li/2,Li/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
        % 取再现照明光垂直入射Rz
        holo=Lo/c*Lo/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入衍射屏图像或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
else
    axes(handles.axes2);%调用坐标
    imshow('背景.bmp')
    try %对异常作出响应
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        set(handles.WuDaoXiangEdit,'string','无');
        set(handles.WuDaoXiangSlider,'string','无');
        set(handles.ChiCunEdit,'string','无');
        set(handles.ChiCunSlider,'string','无');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.ZEdit,'string','无');
        set(handles.WuDaoXiangEdit,'enable','off');
        set(handles.WuDaoXiangSlider,'enable','off');
        set(handles.ChiCunEdit,'enable','off');
        set(handles.ChiCunSlider,'enable','off');
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.ZEdit,'enable','off');
        II=imread([FilePath2,FileName2]);%读入数字全息图
        II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
        %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
        axes(handles.axes3);%调用坐标
        imshow(II,[])
        %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
        % figure
        % imshow(FF,[0,max(max(FF))/200])
        % title('计算全息图的频谱')%显示计算全息图的频谱
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        [r,c]=size(II);%计算全息图的大小(像素)
        Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
        yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
        [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光R
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入需要重构的数字全息图或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
end

% --- Executes during object creation, after setting all properties.
function WuDaoXiangSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WuDaoXiangSlider (see GCBO)
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
try
    var1 = handles.var1;
catch
    errordlg('没有进行仿真选择，请您选择仿真操作','警告');%操作不合理，报错
    return;
end
if(var1 == 1)
    try %对异常作出响应
        FileName1 = handles.FileName1;
        FilePath1 = handles.FilePath1;
        set(handles.WuDaoXiangEdit,'enable','on');
        if(get(handles.WuDaoXiangEdit,'string') == '无')
            set(handles.WuDaoXiangEdit,'string','0.3');
        end
        set(handles.WuDaoXiangSlider,'enable','on');
        set(handles.ChiCunEdit,'enable','on');
        if(get(handles.ChiCunEdit,'string') == '无')
            set(handles.ChiCunEdit,'string','5');
        end
        set(handles.ChiCunSlider,'enable','on');
        set(handles.XEdit,'enable','on');
        if(get(handles.XEdit,'string') == '无')
            set(handles.XEdit,'string','2');
        end
        set(handles.YEdit,'enable','on');
        if(get(handles.YEdit,'string') == '无')
            set(handles.YEdit,'string','2.02');
        end
        set(handles.ZEdit,'enable','on');
        if(get(handles.ZEdit,'string') == '无')
            set(handles.ZEdit,'string','2');
        end
        aa=imread([FilePath1,FileName1]);%读取汉字形光澜图像
        ab=rgb2gray(aa);%将汉字形光澜图像转为灰度图
        ab=ab./max(ab(:));%生成汉字形光澜图像
        check=get(handles.checkbox1,'value');
        if isequal(check,1)
            ab=1-ab;%生成汉字形光澜图像
        end
        ac=zeros(2*size(ab,1),2*size(ab,1));%生成汉字形光澜图像
        ac(floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,1)-1,floor(size(ac,1)/4):floor(size(ac,1)/4)+size(ab,2)-1)=ab;%生成汉字形光澜图像
        Uo=ac;%调入作为物的图像
        Uo=double(Uo(:,:,1));%取第一层，并转为双精度
        axes(handles.axes2);%调用坐标
        imshow(Uo,[])%原始像
        [r,c]=size(Uo);
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        zo=str2double(get(handles.WuDaoXiangEdit,'string'));%物到全息记录面的距离,单位:米
        Lo=str2double(get(handles.ChiCunEdit,'string'))*10^(-3);%赋值衍射面(物)的尺寸,单位:米
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %用T-FFT算法完成全息图记录过程的计算
        xo=linspace(-Lo/2,Lo/2,c);
        yo=linspace(-Lo/2,Lo/2,r);
        [xo,yo]=meshgrid(xo,yo);
        F0=exp(1i*k*zo)/(1i*lamda*zo);
        F1=exp(1i*k/2/zo.*(xo.^2+yo.^2));
        fa=fft2(Uo); 
        fF1=fft2(F1);
        Fuf=fa.*fF1*Lo/r*Lo/c; 
        O=F0.*fftshift(ifft2(Fuf));%在全息记录面上的光场分布
        I=O.*conj(O);%全息记录面上的光强分布
        %figure,imshow(I,[]),colormap(pink),title('衍射图')
        %下面加入参考光
        nx=str2double(get(handles.XEdit,'string'));
        ny=str2double(get(handles.YEdit,'string'));
        nz=str2double(get(handles.ZEdit,'string'));
        alpha=pi/nx;%参考光与x轴间的夹角
        beita=pi/ny;%参考光与y轴间的夹角
        gama=pi/nz;%参考光与z轴间的夹角
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        R=exp(1i*k*(xo*cos(alpha)+yo*cos(beita)+z0*cos(gama))); %参考光
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        %下面计算参、物光在全息记录面上的干涉,得到全息图
        inter=O./max(sqrt(I(:)))+R;%调节光束比，并使参、物光干涉
        II= inter.*conj(inter);%干涉得到全息图
        axes(handles.axes3);%调用坐标
        imshow(II,[])%全息图
        %= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
        %下面计算再现
        %先用S-FFT算法再现全息像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息图到观察面的距离,单位:米
        Li=r*lamda*zi/Lo;%给出像面的尺寸,单位:米
        x=linspace(-Li/2,Li/2,c);
        y=linspace(-Li/2,Li/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2));%用T-FFT算法得到的全息图尺寸与物面一致
        % 取再现照明光垂直入射Rz
        holo=Lo/c*Lo/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入衍射屏图像或图像太大，请重新读入','警告');%操作不合理，报错
        return;
    end
else
    axes(handles.axes2);%调用坐标
    imshow('背景.bmp')
    try %对异常作出响应
        FileName2 = handles.FileName2;
        FilePath2 = handles.FilePath2;
        set(handles.WuDaoXiangEdit,'string','无');
        set(handles.WuDaoXiangSlider,'string','无');
        set(handles.ChiCunEdit,'string','无');
        set(handles.ChiCunSlider,'string','无');
        set(handles.XEdit,'string','无');
        set(handles.YEdit,'string','无');
        set(handles.ZEdit,'string','无');
        set(handles.WuDaoXiangEdit,'enable','off');
        set(handles.WuDaoXiangSlider,'enable','off');
        set(handles.ChiCunEdit,'enable','off');
        set(handles.ChiCunSlider,'enable','off');
        set(handles.XEdit,'enable','off');
        set(handles.YEdit,'enable','off');
        set(handles.ZEdit,'enable','off');
        II=imread([FilePath2,FileName2]);%读入数字全息图
        II=double(II(:,:,2));%读取数字全息图的第二层(绿色)
        %II=double(II(:,254:1786,2));%读取数字全息图的第二层(绿色)
        axes(handles.axes3);%调用坐标
        imshow(II,[])
        %FF=abs(fftshift(fft2(II)));%计算全息图的频谱
        % figure
        % imshow(FF,[0,max(max(FF))/200])
        % title('计算全息图的频谱')%显示计算全息图的频谱
        lamda=(str2double(get(handles.BoChangEdit,'string')))*1e-9;
        k=2*pi/lamda;%赋值波长、波数
        [r,c]=size(II);%计算全息图的大小(像素)
        Lox=c*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        Loy=r*3.2*10^(-6);%赋值全息图的尺寸(纵向),单位:米
        xo=linspace(-Lox/2,Lox/2,c);%生成全息图的x坐标
        yo=linspace(-Loy/2,Loy/2,r);%生成全息图的y坐标
        [xo,yo]=meshgrid(xo,yo);%生成全息图的坐标网格
        %下面用S-FFT算法重构再现像
        zi=str2double(get(handles.QianXiTuDaoGuanChaMianEdit,'string'));%全息记录面到像面的距离,单位:米
        Lix=c*lamda*zi/Lox; %给出像面的尺寸(x方向),单位:米
        Liy=r*lamda*zi/Loy;%给出像面的尺寸(y方向),单位:米
        x=linspace(-Lix/2,Lix/2,c);y=linspace(-Liy/2,Liy/2,r);
        [x,y]=meshgrid(x,y);
        F0=exp(1i*k*zi)/(1i*lamda*zi)*exp(1i*k/2/zi*(x.^2+y.^2));
        F=exp(1i*k/2/zi*(xo.^2+yo.^2)); 
        % 取再现照明光R
        nxz=str2double(get(handles.ZEditX,'string'));
        nyz=str2double(get(handles.ZEditY,'string'));
        nzz=str2double(get(handles.ZEditZ,'string'));
        alphaz=pi/nxz;%参考光与x轴间的夹角
        beitaz=pi/nyz;%参考光与y轴间的夹角
        gamaz=pi/nzz;%参考光与z轴间的夹角
        z0=0;%z轴方向上的坐标原点
        Rz=exp(1i*k*(xo*cos(alphaz)+yo*cos(beitaz)+z0*cos(gamaz))); %参考光
        holo=Lox/c*Loy/r*fftshift(fft2(II.*F.*Rz)); holo=holo.*F0;
        Ii=holo.*conj(holo);
        axes(handles.axes4);%调用坐标
        imshow(Ii,[0,max(max(Ii))./1000]),colormap(pink)%S-FFT再现像
    catch
        errordlg('没有读入需要重构的数字全息图或图像太大，请重新读入','警告');%操作不合理，报错
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
handles2= LiZhouQanXiYvZaiXianYuanLi;%取得相应的界面对象
handles2=guihandles(handles2);%跳转到相应的界面

% --- Executes on button press in DQYSPMPushbutton9.
function DQYSPMPushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to DQYSPMPushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.WuDaoXiangEdit,'string','0.3');
set(handles.ChiCunEdit,'string','5');
set(handles.XEdit,'string','2');
set(handles.YEdit,'string','2.02');
set(handles.ZEdit,'string','2');
[FileName1 , FilePath1]=uigetfile({'*.jpg';'*.png';'*.bmp';'*.*'},'文件');%打开文件夹
if isequal(FileName1 ,0) || isequal(FilePath1,0)%判断是否选择了文件
    errordlg('没有选择相关的文件，请您重新操作','警告');%没选择文件，则报错
    return;
end
handles.FileName1=FileName1;
handles.FilePath1=FilePath1;
guidata(hObject, handles)%函数之间传递参数

% --- Executes on button press in DRSZQXTPushbutton.
function DRSZQXTPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to DRSZQXTPushbutton (see GCBO)
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


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3



function ZEditX_Callback(hObject, eventdata, handles)
% hObject    handle to ZEditX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZEditX as text
%        str2double(get(hObject,'String')) returns contents of ZEditX as a double


% --- Executes during object creation, after setting all properties.
function ZEditX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZEditX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZEditY_Callback(hObject, eventdata, handles)
% hObject    handle to ZEditY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZEditY as text
%        str2double(get(hObject,'String')) returns contents of ZEditY as a double


% --- Executes during object creation, after setting all properties.
function ZEditY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZEditY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZEditZ_Callback(hObject, eventdata, handles)
% hObject    handle to ZEditZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZEditZ as text
%        str2double(get(hObject,'String')) returns contents of ZEditZ as a double


% --- Executes during object creation, after setting all properties.
function ZEditZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZEditZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
