function J = computeCostMulti(X, y, theta)
J = 0;
hypothesis=X*theta;
sqrerrors=zeros(m,1);
sqrerrors=(hypothesis-y).^2;
%sqrerrors
J=sum(sqrerrors)/(2*m);
end
