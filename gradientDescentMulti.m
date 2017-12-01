function [th, J_hist] = gradientDescentMulti(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
     theta = theta -((1/m) * ((X * theta) - y)' * X)' * alpha;
end
th=theta;
J_hist=J_history;
end;    

