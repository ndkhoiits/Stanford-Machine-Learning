function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
positive_data = X(find(y==0), :);
negative_data = X(find(y==1), :);
		
plot(positive_data(:, 1), positive_data(:, 2), 'k+', 
		'LineWidth', 2, 'MarkerSize', 8);				% Plot the positive data
plot(negative_data(:, 1), negative_data(:, 2), 'ko', 
		'MarkerFaceColor', 'y', 'MarkerSize', 8);		% Plot the negative data

xlabel('Exam 1 score');				% Set the x-axis label
ylabel('Exam 2 score');				% Set the y-axis label








% =========================================================================



hold off;

end
