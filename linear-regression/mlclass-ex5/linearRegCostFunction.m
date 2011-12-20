function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% compute cost
h_theta = X*theta;
reg_theta = theta(2:end, :);

reg_param = lambda/(2*m) * (reg_theta' * reg_theta);
cost = (h_theta-y).^2;
J = sum(1/(2*m) * cost) + reg_param;

% compute the usual partial derivatives, without regularization
pd = 1/m * (X' * (h_theta - y));
pd_reg_param = (lambda/m)*theta;

% apply regularization, except for theta = 1 so set first term = 0
pd_reg_param(1) = 0;
grad = pd + pd_reg_param;
		
% =========================================================================

grad = grad(:);

end
