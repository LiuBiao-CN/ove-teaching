function varargout = PiJianGanSheYuanLi(varargin)
% PIJIANGANSHEYUANLI MATLAB code for PiJianGanSheYuanLi.fig
%      PIJIANGANSHEYUANLI, by itself, creates a new PIJIANGANSHEYUANLI or raises the existing
%      singleton*.
%
%      H = PIJIANGANSHEYUANLI returns the handle to a new PIJIANGANSHEYUANLI or the handle to
%      the existing singleton*.
%
%      PIJIANGANSHEYUANLI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIJIANGANSHEYUANLI.M with the given input arguments.
%
%      PIJIANGANSHEYUANLI('Property','Value',...) creates a new PIJIANGANSHEYUANLI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PiJianGanSheYuanLi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PiJianGanSheYuanLi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PiJianGanSheYuanLi

% Last Modified by GUIDE v2.5 11-Apr-2024 17:20:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PiJianGanSheYuanLi_OpeningFcn, ...
                   'gui_OutputFcn',  @PiJianGanSheYuanLi_OutputFcn, ...
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


% --- Executes just before PiJianGanSheYuanLi is made visible.
function PiJianGanSheYuanLi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PiJianGanSheYuanLi (see VARARGIN)

% Choose default command line output for PiJianGanSheYuanLi
handles.output = hObject;
Frame=get(hObject,'JavaFrame');
set(Frame,'FigureIcon',javax.swing.ImageIcon('捕获.PNG'));
axis off;%清除坐标轴
str0='      假设两块平行玻璃板相互构成一个很小的楔角，此时在两块平行玻璃板间';
str1='填充折射率为n并且能够透光的介质，然后通过单色光照射此劈尖，就可以从';
str2='反射光或者是透射光观察到明暗相间且相互平行的干涉条纹，且为等厚干涉条';
str3='纹。并且假设在劈尖的干涉介质薄膜上表面的任意一点处的厚度为d，在这里';
str01='由于劈尖的楔角很小，并且对应的薄膜厚度d也很小，因此可以近似使用平';
str02='行平板的光程差来代替其对应的光程差，并且该光程差为，';
Fun01='\Delta=2ndcos\theta\pm(\lambda\div2)';
str03='在这里如果存在半波损失时，就需要加上半波长。在上式中，\lambda表示';
str11='入射光的波长，而\theta表示入射光波通过劈尖薄膜的上表面折射后的折射角。';
str12='则相位差为，';
Fun02='\Delta\phi=2\pi\Delta\div\lambda';
str13='则可得到对应的光强，';
Fun03='I=A_{1}^{2}+A_{2}^{2}+2A_{1}A_{2}cos(\Delta\phi)';
str21='在上式中A_{1}和A_{2}分别代表观察点处的两个相干光波场的振幅。';
str22='      相反，在透射的情况下，此时的光程差没有半波损失，即光程差变为，';
Fun11='\Delta=2ndcos\theta';
text(0,1, {'','','','','','','','','','','','','','',str0,str1,str2,str3,str01,str02,Fun01,str03,str11,str12,Fun02,str13,Fun03,str21,str22,Fun11},'fontsize',16,'color','blue');%显示
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PiJianGanSheYuanLi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PiJianGanSheYuanLi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
