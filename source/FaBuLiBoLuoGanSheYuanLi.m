function varargout = FaBuLiBoLuoGanSheYuanLi(varargin)
% FABULIBOLUOGANSHEYUANLI MATLAB code for FaBuLiBoLuoGanSheYuanLi.fig
%      FABULIBOLUOGANSHEYUANLI, by itself, creates a new FABULIBOLUOGANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = FABULIBOLUOGANSHEYUANLI returns the handle to a new FABULIBOLUOGANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      FABULIBOLUOGANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FABULIBOLUOGANSHEYUANLI.M with the given input arguments.
%
%      FABULIBOLUOGANSHEYUANLI('Property','Value',...) creates a new FABULIBOLUOGANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FaBuLiBoLuoGanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FaBuLiBoLuoGanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaBuLiBoLuoGanSheYuanLi

% Last Modified by GUIDE v2.5 13-Apr-2024 17:34:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaBuLiBoLuoGanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @FaBuLiBoLuoGanSheYuanLi_OutputFcn, ...
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


% --- Executes just before FaBuLiBoLuoGanSheYuanLi is made visible.
function FaBuLiBoLuoGanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FaBuLiBoLuoGanSheYuanLi (see VARARGIN)

% Choose default command line output for FaBuLiBoLuoGanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      假设入射光波入射时的复振幅为U，而F-P干涉仪的两块相互平行的工作面';
str1='的透射系数分别为t和t’而镀有高反膜的表面的反射系数为r，并且在这里振幅';
Fun01='反射系数和振幅透射系数满足关系，';
Fun011='r=-r^{,}，tt^{,}=1-r^{2}=1-\rho，在这里\rho为反射比';
str3='最终可得F-P干涉仪的透射光强为，';
Fun00='I=U\timesU^{*}=I_{0}\div[1+Fsin^{2}(\delta\div2)]';
str03='假设F-P干涉仪的两块相互平行的工作面之间的间隔为h，其中所填充的介质';
Fun31='的折射率为n，而光通过相平行的工作面的第一面时的折射角为\theta，则在上式';
Fun32='中的精细度系数F和相邻两光波的相位差\delta分别为，';
Fun101='F=4\rho\div(1-\rho)^{2}';
Fun102='\delta=4\pinhcos\theta\div\lambda';
text(0,1, {'','','','','','','','','',str0,str1,Fun01,Fun011,str3,Fun00,str03,Fun31,Fun32,Fun101,Fun102},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaBuLiBoLuoGanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaBuLiBoLuoGanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
