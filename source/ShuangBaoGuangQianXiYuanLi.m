function varargout = ShuangBaoGuangQianXiYuanLi(varargin)
% SHUANGBAOGUANGQIANXIYUANLI MATLAB code for ShuangBaoGuangQianXiYuanLi.fig
%      SHUANGBAOGUANGQIANXIYUANLI, by itself, creates a new SHUANGBAOGUANGQIANXIYUANLI or raises the existing
%      singleton*.
%
%      H = SHUANGBAOGUANGQIANXIYUANLI returns the handle to a new SHUANGBAOGUANGQIANXIYUANLI or the handle to
%      the existing singleton*.
%
%      SHUANGBAOGUANGQIANXIYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHUANGBAOGUANGQIANXIYUANLI.M with the given input arguments.
%
%      SHUANGBAOGUANGQIANXIYUANLI('Property','Value',...) creates a new SHUANGBAOGUANGQIANXIYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ShuangBaoGuangQianXiYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ShuangBaoGuangQianXiYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ShuangBaoGuangQianXiYuanLi

% Last Modified by GUIDE v2.5 11-Apr-2024 16:33:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ShuangBaoGuangQianXiYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @ShuangBaoGuangQianXiYuanLi_OutputFcn, ...
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


% --- Executes just before ShuangBaoGuangQianXiYuanLi is made visible.
function ShuangBaoGuangQianXiYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ShuangBaoGuangQianXiYuanLi (see VARARGIN)

% Choose default command line output for ShuangBaoGuangQianXiYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      双曝光法采用的是将同一张干涉全息记录图进行两次曝光从而同时记录原';
str1='始物光波和变化后的物光波，通过再现光照射再现时，此时这两个物光波相互';
str2='干涉，形成干涉条纹从而反映物体的变化。';
str3='      双曝光法的记录过程，第一步记录物体没有变化时的物光场与参考光干涉';
str01='的全息图，在相同的曝光量内，再记录物体变化后的光波场与参考光干涉的';
str02='全息图，将两幅全息图叠加则可以得到最终的干涉全息图';
str03='     双曝光法的再现即检测，在实验中通常使用原参考光来照明全息图再现。';
text(0,1, {'','','','','','','',str0,str1,str2,str3,str01,str02,str03},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ShuangBaoGuangQianXiYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ShuangBaoGuangQianXiYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
