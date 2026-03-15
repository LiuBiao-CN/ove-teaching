function varargout = ShanYaoGuanShanYanSheYuanLi(varargin)
% SHANYAOGUANSHANYANSHEYUANLI MATLAB code for ShanYaoGuanShanYanSheYuanLi.fig
%      SHANYAOGUANSHANYANSHEYUANLI, by itself, creates a new SHANYAOGUANSHANYANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = SHANYAOGUANSHANYANSHEYUANLI returns the handle to a new SHANYAOGUANSHANYANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      SHANYAOGUANSHANYANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHANYAOGUANSHANYANSHEYUANLI.M with the given input arguments.
%
%      SHANYAOGUANSHANYANSHEYUANLI('Property','Value',...) creates a new SHANYAOGUANSHANYANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ShanYaoGuanShanYanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ShanYaoGuanShanYanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ShanYaoGuanShanYanSheYuanLi

% Last Modified by GUIDE v2.5 11-Apr-2024 16:44:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ShanYaoGuanShanYanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @ShanYaoGuanShanYanSheYuanLi_OutputFcn, ...
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


% --- Executes just before ShanYaoGuanShanYanSheYuanLi is made visible.
function ShanYaoGuanShanYanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ShanYaoGuanShanYanSheYuanLi (see VARARGIN)

% Choose default command line output for ShanYaoGuanShanYanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      在闪耀光栅中，假设相邻两个刻槽面间的宽度即光栅常数为d，刻槽面的';
str1='宽度为a，闪耀光栅的刻槽面数为N个，入射光的入射角为i，衍射角为。根据';
str2='几何关系和折射、反射定理可知，相邻两个刻槽面间的相位差为，';
Fun00='\delta=2\pid(sin\theta+sini)\div\lambda';
str3='将该相位差代入衍射光栅光强公式，';
Fun01='I=I_{0}(sin\alpha\div\alpha)^{2}[sin(N\delta\div2)\divsin(\delta\div2)]^{2}';
str03='其中，';
Fun02='\alpha=kax\div(2f)';
text(0,1, {'','','','','','','',str0,str1,str2,Fun00,str3,Fun01,str03,Fun02},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ShanYaoGuanShanYanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ShanYaoGuanShanYanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
