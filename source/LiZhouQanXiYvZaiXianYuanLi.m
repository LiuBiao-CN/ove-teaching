function varargout = LiZhouQanXiYvZaiXianYuanLi(varargin)
% LIZHOUQANXIYVZAIXIANYUANLI MATLAB code for LiZhouQanXiYvZaiXianYuanLi.fig
%      LIZHOUQANXIYVZAIXIANYUANLI, by itself, creates a new LIZHOUQANXIYVZAIXIANYUANLI or raises the existing
%      singleton*.
%
%      H = LIZHOUQANXIYVZAIXIANYUANLI returns the handle to a new LIZHOUQANXIYVZAIXIANYUANLI or the handle to
%      the existing singleton*.
%
%      LIZHOUQANXIYVZAIXIANYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIZHOUQANXIYVZAIXIANYUANLI.M with the given input arguments.
%
%      LIZHOUQANXIYVZAIXIANYUANLI('Property','Value',...) creates a new LIZHOUQANXIYVZAIXIANYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LiZhouQanXiYvZaiXianYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LiZhouQanXiYvZaiXianYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LiZhouQanXiYvZaiXianYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 16:12:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LiZhouQanXiYvZaiXianYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @LiZhouQanXiYvZaiXianYuanLi_OutputFcn, ...
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


% --- Executes just before LiZhouQanXiYvZaiXianYuanLi is made visible.
function LiZhouQanXiYvZaiXianYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LiZhouQanXiYvZaiXianYuanLi (see VARARGIN)

% Choose default command line output for LiZhouQanXiYvZaiXianYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      离轴全息的记录与再现需要通过两个步骤，第一步将物光与参考光的干';
str1='涉图样即全息图记录下来，此步骤称为记录过程或建图过程；第二步，在一';
Fun01='定的条件下照明该全息图，重现物光波，称为再现过程或建像过程。';
Fun011='      参考光R与主光轴的夹角为θ。经透明物体衍射的光波为物光O。观';
str3='察面用于记录参考光R与物光O的干涉图即全息图。则对应光强分布为：';
Fun00='I(x,y)=|O(x,y)+R(x,y)|^{2}=[O(x,y)+R(x,y)]+[O(x,y)+R(x,y)]^{*}';
Fun02='=[O(x,y)+R(x,y)]+[O(x,y)^{*}+R(x,y)^{*}]';
str03='假设振幅为C的再现光照射该全息图，则再现光场为，';
str11='U(x,y)=C\timesI(x,y)';
text(0,1, {'','','','','','',str0,str1,Fun01,Fun011,str3,Fun00,Fun02,str03,str11},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LiZhouQanXiYvZaiXianYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LiZhouQanXiYvZaiXianYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
