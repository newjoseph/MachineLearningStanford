function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X*theta);

% theta should be regularized so it starts not from 0 but from 1
J = mean(-y.*log(h)-(1-y).*(log(1-h))) + lambda/(2*m)*sum(theta(2:length(theta)) .^2);


for iter = 1:size(X)(2)
  if iter == 1,
    grad(iter) = mean((h-y).*X(:,iter));
  else
    grad(iter) = mean((h-y).*X(:,iter)) + lambda/m*theta(iter);
  end
end

% =============================================================

end
