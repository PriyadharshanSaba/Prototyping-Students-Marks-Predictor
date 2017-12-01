function J = computeCost(X, y, theta)

m = length(y); % number of training examples
hypothesis=X*theta;
sqrerrors=zeros(m,1);
sqrerrors=(hypothesis-y).^2;
%sqrerrors
J=sum(sqrerrors)/(2*m);

end
