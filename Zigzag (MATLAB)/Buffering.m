function [V,E]=Buffering(x,y,d)
p=polyshape(x,y);
pp=polybuffer(p,-d);
X=pp.Vertices(:,1);
Y=pp.Vertices(:,2);
o=find(isnan(X)==1);
if length(o)~=0
X(o(1))=X(1); 
Y(o(1))=Y(1);
V(1)={X(1:o(1))};
E(1)={Y(1:o(1))};
for i=2:size(o)
X(o(i))=X(o(i-1)+1);
Y(o(i))=Y(o(i-1)+1);
V(i)={X(o(i-1)+1:o(i))};
E(i)={Y(o(i-1)+1:o(i))};
end
X(end+1)=X(o(end)+1);
Y(end+1)=Y(o(end)+1);
V(end+1)={X(o(end)+1:end)};
E(end+1)={Y(o(end)+1:end)};
else
X(end+1)=X(1);
Y(end+1)=Y(1);
V(1)={X};
E(1)={Y};
end
