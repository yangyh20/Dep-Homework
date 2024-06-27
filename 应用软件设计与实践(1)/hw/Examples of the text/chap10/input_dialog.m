prompt{1} = 'Starting x position:'; 
prompt{2} = 'Starting y position:'; 
prompt{3} = 'Width:'; 
prompt{4} = 'Height:';
title = 'Set Figure Position';
default_ans = {'50','50','180','100'};
answer = inputdlg(prompt,title,1,default_ans);
