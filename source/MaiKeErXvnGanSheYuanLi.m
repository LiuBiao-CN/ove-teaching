function varargout = MaiKeErXvnGanSheYuanLi(varargin)
% MAIKEERXVNGANSHEYUANLI MATLAB code for MaiKeErXvnGanSheYuanLi.fig
%      MAIKEERXVNGANSHEYUANLI, by itself, creates a new MAIKEERXVNGANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = MAIKEERXVNGANSHEYUANLI returns the handle to a new MAIKEERXVNGANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      MAIKEERXVNGANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIKEERXVNGANSHEYUANLI.M with the given input arguments.
%
%      MAIKEERXVNGANSHEYUANLI('Property','Value',...) creates a new MAIKEERXVNGANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MaiKeErXvnGanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MaiKeErXvnGanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MaiKeErXvnGanSheYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 15:27:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MaiKeErXvnGanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @MaiKeErXvnGanSheYuanLi_OutputFcn, ...
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


% --- Executes just before MaiKeErXvnGanSheYuanLi is made visible.
function MaiKeErXvnGanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MaiKeErXvnGanSheYuanLi (see VARARGIN)

% Choose default command line output for MaiKeErXvnGanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      非定域情况时的迈克耳逊干涉仪产生的干涉可以看成是两个球面光波产';
str1='生的干涉，两球面光波叠加后的复振幅分布为';
Fun01='E=E_{1}+E_{2}=A_{1}exp(jkz)exp[jkx^{2}\div(2z)]\divr_{1}+';
Fun011='A_{2}exp[jk(z+2d)]exp[jkx^{2}\div(2(z+2d))]\divr_{2}';
str3='而叠加后的光强为，';
Fun00='I=E\timesE^{*}';
str03='氦氖激光经过透镜聚焦为点光源S，经分束镜A形成的虚像为S^{,}，S_{1}^{,}和S_{2}^{,}分';
str11='别是S^{,}经M_{1}^{,}和M_{2}对称后所形成的虚像，两者之间的距离为2d在进行仿真计';
str12='算时，相当于S_{1}^{,}和S_{2}^{,}这两个点光源发出的球面光波在观察屏E上相遇产生干';
str31='涉，在这里假设相遇点为P(x,y,z)，S_{1}^{,}的坐标为(0,0,0)则S_{2}^{,}的坐标为(0,0,-2d)，';
str32='而S_{1}^{,}和S_{2}^{,}到P(x,y,z)的距离为r_{1}和r_{2}并且在相遇点处两光波的振幅分别为A_{1}和A_{2}。';
str13='      定域情况时的迈克耳逊干涉仪，1、2两束光等效于在厚度为d的空气膜前、';
str33='后表面反射的光，其对应的光程差为，';
Fun11='\Delta=2ndcos\theta';
str21='定域情况时的迈克耳逊干涉仪的光强为';
Fun03='I=A_{1}^{2}+A_{2}^{2}+2A_{1}A_{2}cos(\Delta\phi)';
text(0,1, {'','','','','','','','','','','','','','','','',str0,str1,Fun01,Fun011,str3,Fun00,str03,str11,str12,str31,str32,str13,str33,Fun11,str21,Fun03},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MaiKeErXvnGanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MaiKeErXvnGanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
