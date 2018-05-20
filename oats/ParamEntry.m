function varargout = ParamEntry(varargin)
% PARAMENTRY MATLAB code for ParamEntry.fig
%      PARAMENTRY, by itself, creates a new PARAMENTRY or raises the existing
%      singleton*.
%
%      H = PARAMENTRY returns the handle to a new PARAMENTRY or the handle to
%      the existing singleton*.
%
%      PARAMENTRY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARAMENTRY.M with the given input arguments.
%
%      PARAMENTRY('Property','Value',...) creates a new PARAMENTRY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ParamEntry_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ParamEntry_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ParamEntry

% Last Modified by GUIDE v2.5 11-Dec-2017 15:53:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ParamEntry_OpeningFcn, ...
                   'gui_OutputFcn',  @ParamEntry_OutputFcn, ...
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


% --- Executes just before ParamEntry is made visible.
function ParamEntry_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ParamEntry (see VARARGIN)

addpath(genpath('Plume_code'));

% Choose default command line output for ParamEntry
handles.output = hObject;

% check if PlumesGUI has been called before
h = findobj('Tag','PlumesGUI');
if ~isempty(h)
    % load info from PlumesGUI
    Plumes_data = guidata(h);
    handles.sout = Plumes_data.sout;
    if isfield(Plumes_data,'plumeprofile')
        handles.plumeprofile = Plumes_data.plumeprofile;
    end    
    % set params
    h1 = findobj('Tag','edit18');
    set(h1,'String',num2str(handles.sout.rho0));
    h1 = findobj('Tag','edit19');
    set(h1,'String',num2str(handles.sout.g));

    h1 = findobj('Tag','edit30');
    if length(handles.sout.entr) > 1
        set(h1,'String',strcat(num2str(handles.sout.entr(1)),{':'},num2str(handles.sout.entr(end))));
    else   
        set(h1,'String',num2str(handles.sout.entr));
    end

    h1 = findobj('Tag','edit20');
    if length(handles.sout.flowrate) > 1
        set(h1,'String',strcat(num2str(handles.sout.flowrate(1)),{':'},num2str(handles.sout.flowrate(end))));
    else   
        set(h1,'String',num2str(handles.sout.flowrate));
    end    

    h1 = findobj('Tag','edit28');
    if length(handles.sout.zr) > 1
        set(h1,'String',strcat(num2str(handles.sout.zr(1)),{':'},num2str(handles.sout.zr(end))));
    else   
        set(h1,'String',num2str(handles.sout.zr));
    end

    h1 = findobj('Tag','edit21');
    if length(handles.sout.bi) > 1
        set(h1,'String',strcat(num2str(handles.sout.bi(1)),{':'},num2str(handles.sout.bi(end))));
    else   
        set(h1,'String',num2str(handles.sout.bi));
    end

    h1 = findobj('Tag','edit22');
    set(h1,'String',num2str(handles.sout.rho_waste));

    h1 = findobj('Tag','edit29');
    if length(handles.sout.rho_f) > 1
        set(h1,'String',strcat(num2str(handles.sout.rho_f(1)),{':'},num2str(handles.sout.rho_f(end))));
    else   
        set(h1,'String',num2str(handles.sout.rho_f));
    end    

    h1 = findobj('Tag','edit24');
    if length(handles.sout.m_f) > 1
        set(h1,'String',strcat(num2str(handles.sout.m_f(1)),{':'},num2str(handles.sout.m_f(end))));
    else   
        set(h1,'String',num2str(handles.sout.m_f));
    end

    h1 = findobj('Tag','edit23');
    if length(handles.sout.rho_s) > 1
        set(h1,'String',strcat(num2str(handles.sout.rho_s(1)),{':'},num2str(handles.sout.rho_s(end))));
    else   
        set(h1,'String',num2str(handles.sout.rho_s));
    end

    h1 = findobj('Tag','edit27');
    if length(handles.sout.m_s) > 1
        set(h1,'String',strcat(num2str(handles.sout.m_s(1)),{':'},num2str(handles.sout.m_s(end))));
    else   
        set(h1,'String',num2str(handles.sout.m_s));
    end

    h1 = findobj('Tag','edit26');
    if length(handles.sout.rho_w) > 1
        set(h1,'String',strcat(num2str(handles.sout.rho_w(1)),{':'},num2str(handles.sout.rho_w(end))));
    else   
        set(h1,'String',num2str(handles.sout.rho_w));
    end
    
    h1 = findobj('Tag','first_ambient');
    set(h1,'String',num2str(handles.sout.U_para));
    h1 = findobj('Tag','second_ambient');
    set(h1,'String',num2str(handles.sout.U_parb));
    h1 = findobj('Tag','edit25');
    set(h1,'String',num2str(handles.sout.mu));
    h1 = findobj('Tag','edit2');
    set(h1,'String',num2str(handles.sout.kw));
    h1 = findobj('Tag','edit10');
    set(h1,'String',num2str(handles.sout.cp));
    h1 = findobj('Tag','edit11');
    set(h1,'String',num2str(handles.sout.finalfrac));
    h1 = findobj('Tag','checkbox1');
    set(h1,'Value',handles.sout.fullprof);
    h1 = findobj('Tag','text32');
    set(h1,'String',handles.sout.profile);
    h1 = findobj('Tag','checkbox2');
    set(h1,'Value',handles.sout.constprof);   
    h1 = findobj('Tag','edit4');
    set(h1,'String',num2str(handles.sout.c));
    h1 = findobj('Tag','edit14');
    set(h1,'String',num2str(handles.sout.zmax));
    h1 = findobj('Tag','checkbox4');
    set(h1,'Value',handles.sout.thermal);
    h1 = findobj('Tag','checkbox3');
    set(h1,'Value',handles.sout.nondim);
    h1 = findobj('Tag','checkbox5');
    set(h1,'Value',handles.sout.climatology);
    h1 = findobj('Tag','checkbox6');
    set(h1,'Value',handles.sout.surfacetemp);

    
else  
    % set default values for inputs
    sout.U_para = 1; %First ambient velocity parameter
    sout.U_parb = 1; %Second ambient velocity parameter
    sout.Ua = @(z,para,parb)  1.05; %Ambient Velocity, function of two parameters
    sout.entrb = 0.5; % Horizontal Entrainment coefficient
    sout.entr_num = 1.5; % Entrainment number for plume, 1 corresponds to standard additive entrainment.
    sout.use_flow_file=0; %Use a file for the background flow
    sout.flow_file = 'crossflow.txt'; %crossflow data file
    sout.rho0=1025; %Reference Density in kg/m^3
    sout.g=9.81; % Local gravity acceleration m/s^2
    sout.entr= 0.1; % Entrainment coefficient
    sout.flowrate = 0.56; % Flowrate out of pipe, m^3/s
    sout.zr = 1000; %Release depth of plume   !!
    sout.bi = 0.25 ;%Initial radial parameter; Corresponds to pipe radius in simple square profile case.
    sout.rho_waste=10;%8.29; %Waste density, Kilogram/meter^3 THIS IS NOT CORRECT/USEFUL;REMOVE
    sout.rho_f = 3334;%Density of manganese nodule fines, kg/m^3
    sout.m_f = 1.54;%Mass flow rate of manganese nodule fines, in kg/s
    sout.rho_s = 2750;%Density of sediment, in kg/m^3
    sout.m_s = 3.1;% mass flow rate of sediment, in kg/s
    sout.rho_w=1023.8;%Initial water density, at surface.;
    sout.mu = 8.9e-4;%Viscosity of water
    sout.kw = 600e-3;%Thermal conductivity of water
    sout.cp= 4185.5; %Specific heat of water
    sout.finalfrac = 0.9; % Because the plumes spread out to ininity and are not perfect near the end, this parameter, when just pulling the final depth or width, will decide what fraction down the plume to pull it from.
    sout.fullprof=1;%Determines if the output should be the full profile or just a single value
    sout.profile='R4901443_161.nc';%File for background profile. Currently assumes it is an ARGO single profile 
    sout.constprof = 0; %use a constant profile instead of an ARGO profile
    sout.N2 = @(z) 5e-6; %Bouyancy frequency squared for the constant stratification case
    sout.c = 1484; %Speed of sounds; currently is constant, but is only used for initial density
    sout.zmax = 1900; %Sets max depth of integrator
    sout.nondim = 0; %runs non-dimensionalized code. Should be ignored if 
    sout.thermal = 1; %Heating code used or not
    sout.climatology = 0;%Tells the code if it should be using a climatology
    sout.surfacetemp = 1; 

    handles.sout = sout;
end
    
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ParamEntry wait for user response (see UIRESUME)
% uiwait(handles.ParamEntry);


% --- Outputs from this function are returned to the command line.
function varargout = ParamEntry_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Run plumes_main and save profile variables
S = plumes_main(handles.sout);
handles.S = S;  % all output parameters
handles.z1 = S{1}.Z;
handles.X = S{1}.X;
handles.rhoa = S{1}.rhoa

%Changed By Andrew, absolute density---------------------------
%handles.drho1 = S{1}.rho0./S{1}.g.*S{1}.F./(S{1}.Q);
handles.drho1 = S{1}.rho0./S{1}.g.*S{1}.F./(S{1}.Q)+S{1}.rhoa(S{1}.Z);

%End Changes-----------------------
handles.vel1 = S{1}.M./(S{1}.Q);
handles.rad1 = S{1}.Q./sqrt(S{1}.M);
guidata(hObject, handles);

% Set title of Current Params to Plume Profile
handles.plumeprofile = 1;
guidata(hObject, handles);

% Open CurrentParams.m
run CurrentParams.m

% Open PlumeGUI.m
run PlumesGUI.m

% Close ParamEntry.m
close(handles.ParamEntry)

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

% kw
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.kw = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double

% fullprof
handles.sout.fullprof = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double

% c
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.c = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double

handles.sout.nondim = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double

% profile
handles.sout.profile = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double

%thermal
handles.sout.thermal = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double

% surface temp
handles.sout.surfacetemp = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double

%climatology
handles.sout.climatology = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double

% cp
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.cp = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double

% finalfrac
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.finalfrac = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double

%constprof
handles.sout.constprof = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double

% N2
handles.sout.N2 = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double

% zmax
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.zmax = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double

% rho0
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.rho0 = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double

% g
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.g = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double

% flowrate
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.flowrate = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double

% bi
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.bi = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double

% rho_waste
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.rho_waste = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double

% rho_s
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.rho_s = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double

% m_f
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.m_f = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double

% mu
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.mu = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double

% rho_w
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.rho_w = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double

% m_s
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.m_s = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.zr = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double

%rho_f
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.rho_f = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double

% entr
if strcmp(get(hObject,'String'),'Value')
    return
end 
handles.sout.entr = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1

% full prof
if get(hObject,'Value') == 1
    handles.sout.fullprof = 1;
else
    handles.sout.fullprof = 0;
end

guidata(hObject, handles);

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2

% constprof
if get(hObject,'Value') == 1
    handles.sout.constprof = 1;
else
    handles.sout.constprof = 0;
end

guidata(hObject, handles);

% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3

% nondim
if get(hObject,'Value') == 1
    handles.sout.nondim = 1;
else
    handles.sout.nondim = 0;
end

guidata(hObject, handles);

% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4

% thermal
if get(hObject,'Value') == 1
    handles.sout.thermal = 1;
else
    handles.sout.thermal = 0;
end

guidata(hObject, handles);

% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5

% climatology
if get(hObject,'Value') == 1
    handles.sout.climatology = 1;
else
    handles.sout.climatology = 0;
end

guidata(hObject, handles);


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6

% surface temp
if get(hObject,'Value') == 1
    handles.sout.surfacetemp = 1;
else
    handles.sout.surfacetemp = 0;
end

guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%choose profile file
filename = uigetfile({'*.nc';'*.mat'});
handles.sout.profile =filename;
h = findobj('Tag','text32');
set(h,'String',filename);
guidata(hObject, handles);



function first_ambient_Callback(hObject, eventdata, handles)
% hObject    handle to first_ambient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of first_ambient as text
%        str2double(get(hObject,'String')) returns contents of first_ambient as a double
handles.sout.U_para = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function first_ambient_CreateFcn(hObject, eventdata, handles)
% hObject    handle to first_ambient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function second_ambient_Callback(hObject, eventdata, handles)
% hObject    handle to second_ambient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of second_ambient as text
%        str2double(get(hObject,'String')) returns contents of second_ambient as a double
handles.sout.U_parb = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function second_ambient_CreateFcn(hObject, eventdata, handles)
% hObject    handle to second_ambient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in background_flow.
function background_flow_Callback(hObject, eventdata, handles)
% hObject    handle to background_flow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = uigetfile({'*.txt'});
handles.sout.use_flow_file =filename;
h = findobj('Tag','text32');
set(h,'String',filename);
guidata(hObject, handles);



function func_Callback(hObject, eventdata, handles)
% hObject    handle to func (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of func as text
%        str2double(get(hObject,'String')) returns contents of func as a double
str = get(hObject,'String');
handles.sout.Ua = str2func(strcat('@(z,x,y) ', str));
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function func_CreateFcn(hObject, eventdata, handles)
% hObject    handle to func (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = uigetfile({'*.m'});
filename = filename(1:end-2);
S = param_file_to_struct(filename);
handles.sout = S;
handles.sout.rho0
%[var_name,var_value] = textread(filename,'%s %f','delimiter','%\n', ' ')
