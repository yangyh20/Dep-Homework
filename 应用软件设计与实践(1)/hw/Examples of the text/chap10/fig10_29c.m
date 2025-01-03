function fig = fig10_29c()
load temp

h0 = figure('Units','points', ...
   'Color',[0.8 0.8 0.8], ...
   'Colormap',mat0, ...
   'FileName','D:\book\Matlab\rev2\chap10\fig10_29c.m', ...
   'MenuBar','none', ...
   'PaperPosition',[18 180 576 432], ...
   'PaperUnits','points', ...
   'Position',[304 16 300 220], ...
   'Tag','Fig1', ...
   'ToolBar','none');
h1 = uimenu('Parent',h0, ...
   'Label','Menu 1', ...
   'Tag','Menu1');
h2 = uimenu('Parent',h1, ...
   'Label','Item 1', ...
   'Tag','Menu1Item1');
h2 = uimenu('Parent',h1, ...
   'Label','Item 2', ...
   'Tag','Menu1Item2');
h3 = uimenu('Parent',h2, ...
   'Label','Submenu Item 1', ...
   'Tag','Menu1Item2Item1');
h3 = uimenu('Parent',h2, ...
   'Label','Submenu Item 2', ...
   'Tag','Menu1Item2Item2');
h2 = uimenu('Parent',h1, ...
   'Label','Item 3', ...
   'Tag','Menu1Item3');
h1 = uimenu('Parent',h0, ...
   'Label','Menu 2', ...
   'Tag','Menu2');
h2 = uimenu('Parent',h1, ...
   'Label','Item 1', ...
   'Tag','Menu2Item1');
if nargout > 0, fig = h0; end
