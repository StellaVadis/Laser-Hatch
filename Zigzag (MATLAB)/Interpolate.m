function [X,Y]=Interpolate(x,y,d)

j=1;
Y=[];
X=[];


for i=1:size(x,1)-1
if x(i)==x(i+1)
x(i)=x(i)+0.0001;
end
end

for i=1:size(x,1)-1
a(i)=x(i+1)>x(i,1);
end



for i=1:size(x,1)-2
if a(i)~=a(i+1)&&a(i)==1
A=interp1(x(j:i+1,1),y(j:i+1,1),ceil(x(j,1)/d)*d:d:floor(x(i+1,1)/d)*d,'linear');
Y=[Y A];
X=[X ceil(x(j,1)/d)*d:d:floor(x(i+1,1)/d)*d];
j=i+1;
elseif  a(i)~=a(i+1)&&a(i)==0
A=interp1(x(j:i+1,1),y(j:i+1,1),ceil(x(j,1)/d)*d:-d:floor(x(i+1,1)/d)*d,'linear');
Y=[Y A];
X=[X ceil(x(j,1)/d)*d:-d:floor(x(i+1,1)/d)*d];
j=i+1;
end
end

if a(j)==1
A=interp1(x(j:end,1),y(j:end,1),ceil(x(j,1)/d)*d:d:floor(x(end,1)/d)*d,'linear');
Y=[Y A];
X=[X ceil(x(j,1)/d)*d:d:floor(x(end,1)/d)*d];
elseif a(j)==0
A=interp1(x(j:end,1),y(j:end,1),ceil(x(j,1)/d)*d:-d:floor(x(end,1)/d)*d,'linear');
Y=[Y A];
X=[X ceil(x(j,1)/d)*d:-d:floor(x(end,1)/d)*d];
end

X(isnan(Y))=[];
Y(isnan(Y))=[];
hold on