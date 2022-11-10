F=load('C:\Users\Stella Vadis\Desktop\A2020190030010fj\Graphs\try2.txt');
x=F(:,1);
y=F(:,2);
hold on;

tic
subplot(1,2,1)
plot(x,y);
title('0.1mmZigZag');
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
[C,Lines]=Sketching(X,Y,0.1,0)
toc
t(1)=toc;

tic
subplot(1,2,2)
plot(x,y,'b')
hold on
view(90,90);
[Perimeters,Hatchingtimes]=Contourhatching(x,y,0.1,0)
title('0.1mmContour');
toc
t(2)=toc;
t