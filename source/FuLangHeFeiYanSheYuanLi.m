function varargout = FuLangHeFeiYanSheYuanLi(varargin)
% FULANGHEFEIYANSHEYUANLI MATLAB code for FuLangHeFeiYanSheYuanLi.fig
%      FULANGHEFEIYANSHEYUANLI, by itself, creates a new FULANGHEFEIYANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = FULANGHEFEIYANSHEYUANLI returns the handle to a new FULANGHEFEIYANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      FULANGHEFEIYANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FULANGHEFEIYANSHEYUANLI.M with the given input arguments.
%
%      FULANGHEFEIYANSHEYUANLI('Property','Value',...) creates a new FULANGHEFEIYANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FuLangHeFeiYanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FuLangHeFeiYanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FuLangHeFeiYanSheYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 17:21:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FuLangHeFeiYanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @FuLangHeFeiYanSheYuanLi_OutputFcn, ...
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


% --- Executes just before FuLangHeFeiYanSheYuanLi is made visible.
function FuLangHeFeiYanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FuLangHeFeiYanSheYuanLi (see VARARGIN)

% Choose default command line output for FuLangHeFeiYanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      当光源和观察屏距离衍射屏为无限远时所对应的衍射称为夫琅和费衍射，';
str1='也称为远场衍射。夫琅和费衍射实验只需要在衍射屏的前方和后方加上两块';
Fun01='会聚透镜假设为L_{1}和L_{2}，此时只需要将单色点光源放在L1_{1}的前方';
Fun011='焦点处，此时单色点光源通过L_{1}后变为了平行光照射到衍射屏上发生';
str3='衍射，衍射光波场在通过L_{2}会聚于其后方焦平面上，即观察屏面上，此时';
Fun00='形成的图样称为夫琅和费衍射图样。';
str03='      最终可得夫琅和费衍射的衍射积分为，';
Fun31='U=exp(jkd)exp[jk(x^{2}+y^{2})\div2d]\divexp(j\lambdad)\times\int\int_{-\infty}^{\infty}U_{0}(x_{0},y_{0})';
Fun32='\timesexp[-j2\pi(xx_{0}\div(\lambdad)+yy_{0}\div(\lambdad))]dx_{0}dy_{0}';
text(0,1, {'','','','','','','',str0,str1,Fun01,Fun011,str3,Fun00,str03,Fun31,Fun32},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FuLangHeFeiYanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FuLangHeFeiYanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
