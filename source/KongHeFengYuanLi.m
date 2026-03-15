function varargout = KongHeFengYuanLi(varargin)
% KONGHEFENGYUANLI MATLAB code for KongHeFengYuanLi.fig
%      KONGHEFENGYUANLI, by itself, creates a new KONGHEFENGYUANLI or raises the existing
%      singleton*.
%
%      H = KONGHEFENGYUANLI returns the handle to a new KONGHEFENGYUANLI or the handle to
%      the existing singleton*.
%
%      KONGHEFENGYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KONGHEFENGYUANLI.M with the given input arguments.
%
%      KONGHEFENGYUANLI('Property','Value',...) creates a new KONGHEFENGYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KongHeFengYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KongHeFengYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KongHeFengYuanLi

% Last Modified by GUIDE v2.5 09-Apr-2024 22:58:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KongHeFengYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @KongHeFengYuanLi_OutputFcn, ...
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


% --- Executes just before KongHeFengYuanLi is made visible.
function KongHeFengYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KongHeFengYuanLi (see VARARGIN)

% Choose default command line output for KongHeFengYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      在这里，假设在一个圆孔和一个狭缝的光屏上的圆孔的坐标为(x_{10},y_{10},z_{10})';
str1='，而狭缝的坐标为(x_{20},y_{20},z_{20})，通过圆孔和狭缝后的光波的振幅分别为和，';
str2='观察平面上的某个观察点的坐标为P(x,y,z)，r1为狭缝到观察平面上的观察点所';
str3='对应的距离(过观察点做狭缝的垂平面，该垂平面与狭缝的交点与观察点连线之';
str01='间的距离)，r_{2}为圆孔到观察平面上的观察点所对应的距离，则可以得到柱';
str02='面光波和球面光波在光场中叠加后的复振幅分布为';
Fun01='E=E_{1}+E_{2}=A_{1}exp[jk(z-z_{10})]exp[jk(x-x_{10})^{2}\div2(z-z_{10})]\divsqrt(r_{1})+';
Fun011='A_{2}exp[jk(z-z_{20})]exp(jk[(x-x_{20})^{2}+(y-y_{20})^{2}]\div2(z-z_{20}))\divr_{2}';
str03='而叠加后的光强为，';
Fun02='I=E\timesE^{*}';
text(0,1, {'','','','','','','','','','',str0,str1,str2,str3,str01,str02,Fun01,Fun011,str03,Fun02},'fontsize',16,'color','blue');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KongHeFengYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KongHeFengYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
