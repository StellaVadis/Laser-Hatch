hold on;

%The 1mm ZigZag hatching of the given first graph
F=importdata('.\graph1.mat');
x=F(:,1);
y=F(:,2);
subplot(2,2,1)
tic
plot(x,y);
title('1mm');
[V,E]=Buffering(x,y,1);
%Initialisation
X=[];
Y=[];
%Interpolation
for i=1:length(V)
[A,B]=Interpolate(V{i},E{i},1);  %Cell A is used to store X,Cell B is used to store Y
X=[X A];
Y=[Y B];
end
%Rotate the figure
view(90,90)
%Sketching
[C1,Lines]=Sketching(X,Y,1,0)
toc
clear all

%The 0.1mm ZigZag hatching of the given first graph 
F=importdata('.\graph1.mat');
x=F(:,1);
y=F(:,2);
subplot(2,2,2)
tic
plot(x,y);
title('0.1mm');
[V,E]=Buffering(x,y,0.1);
%Initialisation
X=[];
Y=[];
%Interpolation
for i=1:length(V)
[A,B]=Interpolate(V{i},E{i},0.1);  %Cell A is used to store X,Cell B is used to store Y
X=[X A];
Y=[Y B];
end
%Rotating the figure
view(90,90)
%Sketching
[C2,Lines2]=Sketching(X,Y,0.1,0)
toc
clear all

%The 1mm ZigZag hatching of the given second graph
F=importdata('.\graph2.mat');
x=F(:,1);
y=F(:,2);
subplot(2,2,3)
tic
plot(x,y);
[V,E]=Buffering(x,y,1);
%Initialisation
X=[];
Y=[];
%Interpolation
for i=1:length(V)
[A,B]=Interpolate(V{i},E{i},1);  %Cell A is used to store X,Cell B is used to store Y
X=[X A];
Y=[Y B];
end
%Rotate the figure
view(90,90)
%Sketching
[C3,Lines3]=Sketching(X,Y,1,0)
toc
clear all

%The 0.1mm ZigZag hatching of the given second graph
F=importdata('.\graph2.mat');
x=F(:,1);
y=F(:,2);
subplot(2,2,4)
tic
plot(x,y);
[V,E]=Buffering(x,y,0.1);
%Initialisation
X=[];
Y=[];
%Interpolation
for i=1:length(V)
[A,B]=Interpolate(V{i},E{i},0.1);  %Cell A is used to store X,Cell B is used to store Y
X=[X A];
Y=[Y B];
end
%Rotate the figure
view(90,90)
%Sketching
[C4,Lines4]=Sketching(X,Y,0.1,0)
toc
clear all