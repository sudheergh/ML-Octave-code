function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end


function J = costFunctionJ(X, y, theta)
	% X is the "design matrix" containing our training examples.
	% y is the class labels
m = size(X,1);                        % number of training examples
predictions = X*theta                 % predictions of hypothesis of all m examples
sqrErrors = (predictions-y).^2;       % squared errors
J = 1/(2*m) * sum(sqrErrors);
%======================================================================
%=  writing the trail after checking the code 
%======================================================================

data = load('ex1data1.txt')
y = data(:,2)
x = data(:,1)
x1=ones(length(y),1)
X=[x1,x]
m = size(X,1)
theta= [0;1]  % 0r theta=zeros(2,1) 
predictions = X*theta
sqrErrors = (predictions-y).^2
J = 1/(2*m) * sum(sqrErrors)