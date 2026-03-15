function varargout = KongJianLvBoYuanLi(varargin)
% KONGJIANLVBOYUANLI MATLAB code for KongJianLvBoYuanLi.fig
%      KONGJIANLVBOYUANLI, by itself, creates a new KONGJIANLVBOYUANLI or raises the existing
%      singleton*.
%
%      H = KONGJIANLVBOYUANLI returns the handle to a new KONGJIANLVBOYUANLI or the handle to
%      the existing singleton*.
%
%      KONGJIANLVBOYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KONGJIANLVBOYUANLI.M with the given input arguments.
%
%      KONGJIANLVBOYUANLI('Property','Value',...) creates a new KONGJIANLVBOYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KongJianLvBoYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KongJianLvBoYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KongJianLvBoYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 17:08:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KongJianLvBoYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @KongJianLvBoYuanLi_OutputFcn, ...
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


% --- Executes just before KongJianLvBoYuanLi is made visible.
function KongJianLvBoYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KongJianLvBoYuanLi (see VARARGIN)

% Choose default command line output for KongJianLvBoYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      空间滤波的理论基于阿贝二次成像理论。阿贝将成像过程分成两步:第一';
str1='步，物体衍射的各次级平面子波通过透镜后在透镜的后焦平面上形成不同空';
Fun01='间位置的光点;第二步，根据惠更斯-菲涅耳原理，焦平面上的各点可以看';
Fun011='成许多新的相干次级波源，像平面所成之像为这些次级波源发出的光波';
str3='互相干涉的结果。';
Fun00='      根据阿贝二次成像理论可知，在光学信息处理的过程中，如果通过一';
str03='定的操作，比如通过滤波器来滤波操作，从而来改变物光波频谱面的结构，';
str11='则最终在像平面上所得到的像必然与没有处理的情况相比发生了改变，最终';
str12='实现对物光波的处理。';
text(0,1, {'','','','','','',str0,str1,Fun01,Fun011,str3,Fun00,str03,str11,str12},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KongJianLvBoYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KongJianLvBoYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
