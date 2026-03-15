function varargout = JuKongYanSheYuanLi(varargin)
% JUKONGYANSHEYUANLI MATLAB code for JuKongYanSheYuanLi.fig
%      JUKONGYANSHEYUANLI, by itself, creates a new JUKONGYANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = JUKONGYANSHEYUANLI returns the handle to a new JUKONGYANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      JUKONGYANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JUKONGYANSHEYUANLI.M with the given input arguments.
%
%      JUKONGYANSHEYUANLI('Property','Value',...) creates a new JUKONGYANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before JuKongYanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to JuKongYanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help JuKongYanSheYuanLi

% Last Modified by GUIDE v2.5 11-Apr-2024 17:18:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @JuKongYanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @JuKongYanSheYuanLi_OutputFcn, ...
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


% --- Executes just before JuKongYanSheYuanLi is made visible.
function JuKongYanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to JuKongYanSheYuanLi (see VARARGIN)

% Choose default command line output for JuKongYanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      当光源或观察屏至少有一个距离衍射屏为有限远时所对应的衍射称为菲涅';
str1='尔衍射，也称为近场衍射。';
str2='菲涅尔衍射积分为，';
Fun01='U=exp(jkd)exp[jk(x^{2}+y^{2})\div2d]\divexp(j\lambdad)\times\int\int_{-\infty}^{\infty}U_{0}(x_{0},y_{0})exp[jk(x_{0}^{2}+y_{0}^{2})\div2d]';
Fun02='\timesexp[-j2\pi(xx_{0}\div\lambdad+yy_{0}\div\lambdad)]dx_{0}dy_{0}';
text(0,1, {'','','','','','','',str0,str1,str2,Fun01,Fun02},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes JuKongYanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = JuKongYanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
