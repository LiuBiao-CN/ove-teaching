function varargout = YangShiShuangFengYuanLi(varargin)
% YANGSHISHUANGFENGYUANLI MATLAB code for YangShiShuangFengYuanLi.fig
%      YANGSHISHUANGFENGYUANLI, by itself, creates a new YANGSHISHUANGFENGYUANLI or raises the existing
%      singleton*.
%
%      H = YANGSHISHUANGFENGYUANLI returns the handle to a new YANGSHISHUANGFENGYUANLI or the handle to
%      the existing singleton*.
%
%      YANGSHISHUANGFENGYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YANGSHISHUANGFENGYUANLI.M with the given input arguments.
%
%      YANGSHISHUANGFENGYUANLI('Property','Value',...) creates a new YANGSHISHUANGFENGYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before YangShiShuangFengYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to YangShiShuangFengYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help YangShiShuangFengYuanLi

% Last Modified by GUIDE v2.5 06-Apr-2024 20:51:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YangShiShuangFengYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @YangShiShuangFengYuanLi_OutputFcn, ...
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


% --- Executes just before YangShiShuangFengYuanLi is made visible.
function YangShiShuangFengYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to YangShiShuangFengYuanLi (see VARARGIN)

% Choose default command line output for YangShiShuangFengYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      在杨氏双缝干涉中，单色光波首先通过含有一个通光狭缝光屏形成一柱面';
str1='光波，此柱面光波在通过一个含有两条通光狭缝的光屏，并且含有两条通光狭';
str2='缝的光屏中的两条狭缝关于含有一个通光狭缝光屏的狭缝对称，此时柱面光波';
str3='通过这两个狭缝就形成了两个初相位相同的柱面光波，这两个相干的柱面光波';
str01='在空间中相遇产生叠加之后就形成了明暗相间的干涉条纹。';
str02='两个柱面光波在光场中产生叠加，叠加后的复振幅分布为，';
Fun01='E=E_{1}+E_{2}=A_{1}exp(jkz)exp(jk(x-x_{10})^{2}\div2z)\divsqrt(r_{1})+A_{2}exp(jkz)exp(jk(x-x_{20})^{2}\div2z)\divsqrt(r_{2})';
str03='而叠加后的光强为，';
Fun02='I=E\timesE^{*}';
text(0,1, {'','','','','','','',str0,str1,str2,str3,str01,str02,Fun01,str03,Fun02},'fontsize',16,'color','blue');%显示'Interpreter','latex'

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes YangShiShuangFengYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = YangShiShuangFengYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
