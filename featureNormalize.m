function [X_norm, mu, sigma] = featureNormalize(X)
[m,n]=size(X);
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
mu=mean(X);

for i=1:n
  X(:,i)=X(:,i)-mu(i);
end
sigma = std(X);

for i=1:n
  if(sigma(i)!=0)
    X(:,i)=X(:,i)/sigma(i);
   end 
end

X_norm=X;
mu=mean(X);
sigma = std(X);
 
