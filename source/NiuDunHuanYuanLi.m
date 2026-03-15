function varargout = NiuDunHuanYuanLi(varargin)
% NIUDUNHUANYUANLI MATLAB code for NiuDunHuanYuanLi.fig
%      NIUDUNHUANYUANLI, by itself, creates a new NIUDUNHUANYUANLI or raises the existing
%      singleton*.
%
%      H = NIUDUNHUANYUANLI returns the handle to a new NIUDUNHUANYUANLI or the handle to
%      the existing singleton*.
%
%      NIUDUNHUANYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NIUDUNHUANYUANLI.M with the given input arguments.
%
%      NIUDUNHUANYUANLI('Property','Value',...) creates a new NIUDUNHUANYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NiuDunHuanYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NiuDunHuanYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NiuDunHuanYuanLi

% Last Modified by GUIDE v2.5 11-Apr-2024 17:38:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NiuDunHuanYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @NiuDunHuanYuanLi_OutputFcn, ...
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


% --- Executes just before NiuDunHuanYuanLi is made visible.
function NiuDunHuanYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NiuDunHuanYuanLi (see VARARGIN)

% Choose default command line output for NiuDunHuanYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      假设平凸透镜的曲面的曲率中心为C，曲率半径为R，而平凸透镜的曲面';
str1='的顶点与平晶的交点为O(平凸透镜与平晶紧密接触时)，并且假设在距离CO';
str2='连线为r处的干涉薄膜的厚度为d，并且由于R>>r，根据几何关系可得，';
Fun00='d=r^{2}\div(2R)';
str3='假设干涉薄膜的折射率为n，在反射光相遇形成干涉的情况下，在这里由于平';
str01='凸透镜与平晶之间所形成的薄膜厚度变化很小，因此可以近似使用平行平板';
str02='的光程差来代替其对应的光程差，并且该光程差为，';
Fun01='\Delta=2ndcos\theta\pm(\lambda\div2)';
str03='在这里如果存在半波损失时，就需要加上半波长。在上式中，\lambda表示';
str11='入射光的波长，而\theta表示入射光波通过平凸透镜的凸表面(干涉薄膜的上';
str12='表面)折射后的折射角。则相位差为，';
Fun02='\Delta\phi=2\pi\Delta\div\lambda';
str13='则可得到对应的光强，';
Fun03='I=A_{1}^{2}+A_{2}^{2}+2A_{1}A_{2}cos(\Delta\phi)';
str21='在上式中A_{1}和A_{2}分别代表观察点处的两个相干光波场的振幅。';
str22='      相反，在透射的情况下，此时的光程差没有半波损失，即光程差变为，';
Fun11='\Delta=2ndcos\theta';
text(0,1, {'','','','','','','','','','','','','','','',str0,str1,str2,Fun00,str3,str01,str02,Fun01,str03,str11,str12,Fun02,str13,Fun03,str21,str22,Fun11},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NiuDunHuanYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NiuDunHuanYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
