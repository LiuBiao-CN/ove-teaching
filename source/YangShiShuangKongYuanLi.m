function varargout = YangShiShuangKongYuanLi(varargin)
% YANGSHISHUANGKONGYUANLI MATLAB code for YangShiShuangKongYuanLi.fig
%      YANGSHISHUANGKONGYUANLI, by itself, creates a new YANGSHISHUANGKONGYUANLI or raises the existing
%      singleton*.
%
%      H = YANGSHISHUANGKONGYUANLI returns the handle to a new YANGSHISHUANGKONGYUANLI or the handle to
%      the existing singleton*.
%
%      YANGSHISHUANGKONGYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YANGSHISHUANGKONGYUANLI.M with the given input arguments.
%
%      YANGSHISHUANGKONGYUANLI('Property','Value',...) creates a new YANGSHISHUANGKONGYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before YangShiShuangKongYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to YangShiShuangKongYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help YangShiShuangKongYuanLi

% Last Modified by GUIDE v2.5 09-Apr-2024 20:02:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @YangShiShuangKongYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @YangShiShuangKongYuanLi_OutputFcn, ...
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


% --- Executes just before YangShiShuangKongYuanLi is made visible.
function YangShiShuangKongYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to YangShiShuangKongYuanLi (see VARARGIN)

% Choose default command line output for YangShiShuangKongYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      首先，单色光波通过小孔S之后形成一球面波，其次，该球面波再通过关于';
str1='小孔S对称的两个小孔S_{1}、S_{2}后分别形成两列球面子波，最后，这两列光波在';
str2='空间中观察屏处相遇产生干涉，最终形成干涉条纹。';
str3='      假设，两个小孔S_{1}(d/2,0,0)、S_{2}(-d/2,0,0)之间的距离为d,并且这两个小孔';
str01='到达观察屏的距离为D，同时两列光波的相遇点假设为P(x,y,D)，由图中的几何';
str02='关系可知，小孔S到小孔S_{1}、S_{2}之间的距离相同，即它们的光程差为0，而小孔S_{1}';
str11='、S_{2}到观察屏上的P点的光程差为，';
Fun01='	\Delta=(xd)\divD';
str03='两列相干光波在相遇点P处的相位差为，';
Fun02='\Delta\Phi=(2\pixd)\div(D\lambda)';
str12='光强公式为，';
Fun03='I=A_{1}^{2}+A_{2}^{2}+2A_{1}A_{2}cos(\Delta\Phi)';
str21='在上式中A_{1}和A_{2}分并为两列相干光波的振幅';
text(0,1, {'','','','','','','','','','','','','','',str0,str1,str2,str3,str01,str02,str11,Fun01,str03,Fun02,str12,Fun03,str21},'fontsize',16,'color','blue');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes YangShiShuangKongYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = YangShiShuangKongYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
