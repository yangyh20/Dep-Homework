function fig = plot_line()
%
%  Purpose: 
%    This program reads an input data set in (x,y) format
%    and plots the resulting points.  It illustrates the
%    use of standard menus, context menus, and dialog boxes.
%
%  Record of revisions:
%      Date       Programmer        Description of change
%      ====       ==========        =====================
%     3/10/99    S. J. Chapman      Original code 
%
load plot_line

% Define figure
h0 = figure('Units','points', ...
   'Color',[0.8 0.8 0.8], ...
   'Colormap',mat0, ...
   'MenuBar','none', ...
   'Name','Plot Line', ...
   'NumberTitle','off', ...
   'Position',mat1, ...
   'Tag','Fig1', ...
   'ToolBar','none');

% Define standard menu
h1 = uimenu('Parent',h0, ...
   'Label','&File', ...
   'Tag','FileMenu1');
h2 = uimenu('Parent',h1, ...
   'Callback','plot_line_callback FileOpen1', ...
   'Label','&Open', ...
   'Tag','FileOpen1');
h2 = uimenu('Parent',h1, ...
   'Callback','plot_line_callback FileExit1', ...
   'Label','E&xit', ...
   'Separator','on', ...
   'Tag','FileExit1');

% Add plot axes to the figure
h1 = axes('Parent',h0, ...
   'Units','pixels', ...
   'CameraUpVector',[0 1 0], ...
   'Color',[1 1 1], ...
   'ColorOrder',mat2, ...
   'Position',[75 62 545 389], ...
   'Tag','Axes1', ...
   'XColor',[0 0 0], ...
   'YColor',[0 0 0], ...
   'ZColor',[0 0 0]);
h2 = text('Parent',h1, ...
   'Color',[0 0 0], ...
   'HandleVisibility','off', ...
   'HorizontalAlignment','center', ...
   'Position',[0.498 -0.0722 9.160], ...
   'Tag','Axes1Text4', ...
   'VerticalAlignment','cap');
set(get(h2,'Parent'),'XLabel',h2);
h2 = text('Parent',h1, ...
   'Color',[0 0 0], ...
   'HandleVisibility','off', ...
   'HorizontalAlignment','center', ...
   'Position',[-0.064 0.497 9.160], ...
   'Rotation',90, ...
   'Tag','Axes1Text3', ...
   'VerticalAlignment','baseline');
set(get(h2,'Parent'),'YLabel',h2);
h2 = text('Parent',h1, ...
   'Color',[0 0 0], ...
   'HandleVisibility','off', ...
   'HorizontalAlignment','right', ...
   'Position',[-0.138 1.137 9.160], ...
   'Tag','Axes1Text2', ...
   'Visible','off');
set(get(h2,'Parent'),'ZLabel',h2);
h2 = text('Parent',h1, ...
   'Color',[0 0 0], ...
   'HandleVisibility','off', ...
   'HorizontalAlignment','center', ...
   'Position',[0.498 1.020 9.160], ...
   'Tag','Axes1Text1', ...
   'VerticalAlignment','bottom');
set(get(h2,'Parent'),'Title',h2);

% Create context menu
h1 = uicontextmenu('Parent',h0, ...
   'Tag','ContextMenu1');
h2 = uimenu('Parent',h1, ...
   'Callback','plot_line_callback LineSolid1', ...
   'Label','Solid', ...
   'Tag','LineSolid1');
h2 = uimenu('Parent',h1, ...
   'Callback','plot_line_callback LineDashed1', ...
   'Label','Dashed', ...
   'Tag','LineDashed1');
h2 = uimenu('Parent',h1, ...
   'Callback','plot_line_callback LineDotted1', ...
   'Label','Dotted', ...
   'Tag','LIneDotted1');
h2 = uimenu('Parent',h1, ...
   'Callback','plot_line_callback LineDashDot1', ...
   'Label','Dash-Dot', ...
   'Tag','LineDashDot1');

% End ...
if nargout > 0, fig = h0; end
