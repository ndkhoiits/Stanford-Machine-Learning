function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% code to find out the best C and sigma commented out below

% possible_C = [0.01 0.03 0.1 0.3 1 3 10 30];
% possible_sigma = [0.01 0.03 0.1 0.3 1 3 10 30];
% test_history = [ 0 0 0 ];
% max_accuracy = 0;

% try all combinations of C and sigma values, will take a long while !!
% for test_C = possible_C
% 	for test_sigma = possible_sigma
	
		% for each pair (C, sigma), train a SVM based on training set (X, y)
		% model = svmTrain(X, y, test_C, @(x1, x2) gaussianKernel(x1, x2, test_sigma)); 

		% make prediction based on the cross-validation set (Xval, yval)
		% predictions = svmPredict(model, Xval); 
		% accuracy = mean(double(predictions == yval));
		% fprintf(['Trained an SVM with parameter test_C = %f, test_sigma = %f, accuracy = %f\n'], 
		% 		test_C, test_sigma, accuracy);

		% save the parameters (C, sigma) that gives the highest accuracy so far
		% if (accuracy > max_accuracy)
		% 	max_accuracy = accuracy;
		% 	C = test_C;
		% 	sigma = test_sigma;
		% end

		% save all prediction accuracy for further manual verification later
		% test_history = [test_history; test_C test_sigma accuracy];
		
% 	end
% end

% test_history
% fprintf(['Maximum accuracy = %f found for parameter C = %f, sigma = %f\n'], 
% 		max_accuracy, C, sigma);

% found from the above commented chunk of code
C = 0.300000;
sigma = 0.100000;

% =========================================================================

end
