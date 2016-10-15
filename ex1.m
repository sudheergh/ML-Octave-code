
fprintf('Running start of Gradient Descent ...\n')
data = load('ex1data1.txt');
y = data(:,2);
x = data(:,1);
x1=ones(length(y),1);
X=[x1,x];
theta=zeros(2,1);


alpha=0.01;
iterations=1500;

%===alpha=0.5;
%===iterations=10;

% compute and display initial cost
Jinitial=computeCost(X, y, theta);
fprintf('Initial cost is with the variable ==Jinitial== ...\n')


% run gradient descent
%-theta = gradientDescent(X, y, theta, alpha, iterations);
theta=gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));

%===[otheta,oJhist] = gradientDescent(X, y, theta, alpha, iterations);
%===theta = gradientDescent(X, y, theta, alpha, iterations);







