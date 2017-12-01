function j=pred(x,y,theta)

%random

m=size(x,1);    %No of training examples
preds=x*theta;
err=(preds-y).^2;

j=1/(2*m)*sum(err);
