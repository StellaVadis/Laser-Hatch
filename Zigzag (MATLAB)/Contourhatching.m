function [Perimeters,Hatchingtimes]=Contourhatching(x,y,spans,pausetime)
hold on
polygon=polyshape(x,y);
Hatchingtimes=1;
Perimeters=0;
set(gca,'ColorOrder',[1 1 1]);

while polygon.NumRegions >0
polygon=polybuffer(polygon,-spans); 
%This is one of the most curcial step in this function
if size(polygon.Vertices,1)>1500
   p1= [polygon.Vertices(1,1) ;diff(polygon.Vertices(:,1))];
   p2=[polygon.Vertices(1,2) ;diff(polygon.Vertices(:,2))];
       [~,index]=find((p1.^2+p2.^2)<spans^2);
polygon.Vertices(index,:)=[];
end

plot(polygon);
Hatchingtimes=Hatchingtimes+1;
Perimeters=Perimeters+perimeter(polygon);
pause(pausetime)
end


