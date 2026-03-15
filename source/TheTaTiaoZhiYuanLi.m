function varargout = TheTaTiaoZhiYuanLi(varargin)
% THETATIAOZHIYUANLI MATLAB code for TheTaTiaoZhiYuanLi.fig
%      THETATIAOZHIYUANLI, by itself, creates a new THETATIAOZHIYUANLI or raises the existing
%      singleton*.
%
%      H = THETATIAOZHIYUANLI returns the handle to a new THETATIAOZHIYUANLI or the handle to
%      the existing singleton*.
%
%      THETATIAOZHIYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THETATIAOZHIYUANLI.M with the given input arguments.
%
%      THETATIAOZHIYUANLI('Property','Value',...) creates a new THETATIAOZHIYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TheTaTiaoZhiYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TheTaTiaoZhiYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TheTaTiaoZhiYuanLi

% Last Modified by GUIDE v2.5 11-Apr-2024 16:25:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TheTaTiaoZhiYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @TheTaTiaoZhiYuanLi_OutputFcn, ...
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


% --- Executes just before TheTaTiaoZhiYuanLi is made visible.
function TheTaTiaoZhiYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TheTaTiaoZhiYuanLi (see VARARGIN)

% Choose default command line output for TheTaTiaoZhiYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      θ调制的基本原理基于阿贝二次成像理论。而在θ调制实验中，通常使用的';
str1='是4f光学系统，在该光学系统中有两个傅里叶透镜L_{1}和L_{2}，在透镜L_{1}的前方焦';
str2='平面处放上已经编码好的物体，然后该物体所发出的物光场经过第一个傅里叶';
str3='透镜L_{1}第一次傅里叶变换后在其后焦平面上形成该物光波的频谱，并且该频谱';
str01='面与第二个傅里叶透镜L_{2}的前焦面重合，此时在该频谱面上对物光波的频谱进';
str02='行处理，处理后的物光波的频谱在经过第二个傅里叶透镜L_{2}进行傅里叶逆变换';
str03='变换到物空间，此是在该透镜的后焦平面上形成了处理或调制后的物面。';
text(0,1, {'','','','','','','',str0,str1,str2,str3,str01,str02,str03},'fontsize',16,'color','blue');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TheTaTiaoZhiYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TheTaTiaoZhiYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
