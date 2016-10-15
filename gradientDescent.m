function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
Jalpha=0;
for iter = 1:num_iters
Jalpha=alpha*(1/m);
theta1=theta(1)-Jalpha*sum((X*theta-y)'*X(:,1));
theta2=theta(2)-Jalpha*sum((X*theta-y)'*X(:,2));
theta=[theta1; theta2];
    % Save the cost J in every iteration    
J_history(iter) = computeCost(X, y, theta);
%===fprintf('print j-history after every iteration ...\n')
end
J_history
end
