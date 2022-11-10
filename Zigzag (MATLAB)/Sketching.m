function  [C,Lines]=Sketching(X,Y,d,pausetime)
for k=min(X):d:max(X)
    [~,indexs]=find(abs(X-k)<10^(-6));
    X1=X(indexs);
    Y1=Y(indexs);
    [~,indexs]=sort(Y1,'descend');
    Y1=Y1(indexs);
    U{uint64((k-min(X)+d)/d)}=Y1;
    points(uint64((k-min(X)+d)/d))=size(Y1,2);
end
   list(1)=1;
        j=2;
   for k=1:size(points,2)-1   
      if points(k)~=points(k+1)
          list(j)=k;
          list(j+1)=k+1;
          j=j+2;   
      end 
   end
   list(end+1)=size(points,2); 
   hold on;
   C=0;
 Lines=0;

   for p=1:2:size(list,2)     
       for j=1:2:points(list(p)) 
           for k=min(X)+(list(p)-1)*d:d:min(X)+(list(p+1)-1)*d-d   
               plot([k,k],[U{uint64((k-min(X)+d)/d)}(j),U{uint64((k-min(X)+d)/d)}(j+1)],'k');
               pause(pausetime)
               C=C+U{uint64((k-min(X)+d)/d)}(j)-U{uint64((k-min(X)+d)/d)}(j+1);
               Lines=Lines+1;
               if mod(round(k/d),2)==0  
           plot([k,k+d],[U{uint64((k-min(X)+d)/d)}(j),U{uint64((k-min(X)+2*d)/d)}(j)],'k') 
           pause(pausetime)
           C=C+sqrt(d^2+(U{uint64((k-min(X)+d)/d)}(j)-U{uint64((k-min(X)+2*d)/d)}(j))^2);
               else
           plot([k,k+d],[U{uint64((k-min(X)+d)/d)}(j+1),U{uint64((k-min(X)+2*d)/d)}(j+1)],'k')
           pause(pausetime)
           C=C+sqrt(d^2+(U{uint64((k-min(X)+d)/d)}(j+1)-U{uint64((k-min(X)+2*d)/d)}(j+1))^2);
               end
           end
           k=min(X)+(list(p+1)-1)*d;
            plot([k,k],[U{uint64((k-min(X)+d)/d)}(j),U{uint64((k-min(X)+d)/d)}(j+1)],'k');
            pause(pausetime)
               C=C+U{uint64((k-min(X)+d)/d)}(j)-U{uint64((k-min(X)+d)/d)}(j+1);
               Lines=Lines+1;
       end
   end
   