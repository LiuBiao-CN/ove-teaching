function varargout = LangQiGuangShanYanSheYuanLi(varargin)
% LANGQIGUANGSHANYANSHEYUANLI MATLAB code for LangQiGuangShanYanSheYuanLi.fig
%      LANGQIGUANGSHANYANSHEYUANLI, by itself, creates a new LANGQIGUANGSHANYANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = LANGQIGUANGSHANYANSHEYUANLI returns the handle to a new LANGQIGUANGSHANYANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      LANGQIGUANGSHANYANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LANGQIGUANGSHANYANSHEYUANLI.M with the given input arguments.
%
%      LANGQIGUANGSHANYANSHEYUANLI('Property','Value',...) creates a new LANGQIGUANGSHANYANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LangQiGuangShanYanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LangQiGuangShanYanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LangQiGuangShanYanSheYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 16:35:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LangQiGuangShanYanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @LangQiGuangShanYanSheYuanLi_OutputFcn, ...
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


% --- Executes just before LangQiGuangShanYanSheYuanLi is made visible.
function LangQiGuangShanYanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LangQiGuangShanYanSheYuanLi (see VARARGIN)

% Choose default command line output for LangQiGuangShanYanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      在一块光栅上，假设透光缝的宽度为a，相邻两个通光缝之间的间距为';
str1='d即为光栅常数，同时假设该光栅上共有N条通光缝。';
str2='      在多缝的夫琅禾费衍射(黑白光栅衍射)中，多缝按其光栅常数d把人射';
Fun00='光波波面分割成N个部分，每个部分成为一个单缝而发生夫琅和费衍射，';
str3='由于单缝衍射场之间是相干的，因此多缝夫琅和费衍射的复振幅分布是所';
str01='有单缝夫琅和费衍射复振幅分布的叠加，可以看成是单缝夫琅和费衍射';
str02='和多缝干涉的综合结果。最终可得衍射光栅光强公式为，';
Fun01='I=I_{0}(sin\alpha\div\alpha)^{2}[sin(N\delta\div2)\divsin(\delta\div2)]^{2}';
str03='假设在观察平面上的任意一点P(x,y,z)处为考察点，且在该点处的衍射角为\theta';
str11='则\alpha为，';
str12='\alpha=\piasin\theta\div\lambda';
str13='并且相邻的狭缝在P点处产生的夫琅禾费衍射的幅值与中心狭缝的相同，';
str21='只是产生了一个相位差，';
Fun02='\delta=2\pidsin\theta\div\lambda';
text(0,1, {'','','','','','','','','','','','',str0,str1,str2,Fun00,str3,str01,str02,Fun01,str03,str11,str12,str13,str21,Fun02},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LangQiGuangShanYanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LangQiGuangShanYanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
