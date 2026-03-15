function varargout = JieTiGuangShanYanSheYuanLi(varargin)
% JIETIGUANGSHANYANSHEYUANLI MATLAB code for JieTiGuangShanYanSheYuanLi.fig
%      JIETIGUANGSHANYANSHEYUANLI, by itself, creates a new JIETIGUANGSHANYANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = JIETIGUANGSHANYANSHEYUANLI returns the handle to a new JIETIGUANGSHANYANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      JIETIGUANGSHANYANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JIETIGUANGSHANYANSHEYUANLI.M with the given input arguments.
%
%      JIETIGUANGSHANYANSHEYUANLI('Property','Value',...) creates a new JIETIGUANGSHANYANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before JieTiGuangShanYanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to JieTiGuangShanYanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help JieTiGuangShanYanSheYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 16:58:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @JieTiGuangShanYanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @JieTiGuangShanYanSheYuanLi_OutputFcn, ...
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


% --- Executes just before JieTiGuangShanYanSheYuanLi is made visible.
function JieTiGuangShanYanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to JieTiGuangShanYanSheYuanLi (see VARARGIN)

% Choose default command line output for JieTiGuangShanYanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      假设阶梯光栅中玻璃板的厚度为t，玻璃板的折射率为n，阶梯高度为d同';
str1='时也是透光的宽度a，而衍射角位\theta，根据几何关系和折射、反射定理可以得';
str2='到透射式和反射式的两相邻阶梯之间的相位差分别为，';
Fun00='\delta=2\pi[dsin\theta+(n-1)t]\div\lambda';
Fun10='\delta=2\pi(2t-dsin\theta)\div\lambda';
str3='将该相位差代入衍射光栅光强公式，';
Fun01='I=I_{0}(sin\alpha\div\alpha)^{2}[sin(N\delta\div2)\divsin(\delta\div2)]^{2}';
str03='其中，';
Fun02='\alpha=\piasin\theta\div\lambda';
text(0,1, {'','','','','','','',str0,str1,str2,Fun00,Fun10,str3,Fun01,str03,Fun02},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes JieTiGuangShanYanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = JieTiGuangShanYanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
