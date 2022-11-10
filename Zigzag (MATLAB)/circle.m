graph2 = importdata('graph2.mat');
x=graph2(:,1);
y=graph2(:,2);
%Pause 0.5 second after each paint
Contourhatching(x,y,1,0.5);
