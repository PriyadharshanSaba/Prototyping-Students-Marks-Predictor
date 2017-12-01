function y= identitymat(x),
  for i=1:length(x(:,1)),
    for j=1:length(x(1,:)),
      if((i==j && x(i,j)!=1)|| ((i!=j &&x(i,j)!=0))
      y=0
      end;
     end;
  end;
  y=1;
    
    