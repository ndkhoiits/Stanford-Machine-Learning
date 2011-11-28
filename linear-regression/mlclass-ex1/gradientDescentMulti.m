function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1); % list of calculated cost values

for iter = 1:num_iters

	% A better way to compute the partial derivative without using sum 
	% is using inner product
	%    (h_theta-y) is a matrix of size 47x1
	%    X is a matrix of size 47x1 too
	% Multiply (h_theta-y)' with X to get the dot product, which
	% sums up the product of each element of (h-theta-y) with X 
	      
	h_theta = X * theta;
	partial_derivative = (h_theta - y)' * X;

	% actually compute theta
	theta = theta .- (alpha * 1/m * partial_derivative');

    % save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end