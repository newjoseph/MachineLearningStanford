function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% add 1s 
%X = [ones(m,1) X];
%Theta1 = [ones(1), Theta1];
%Theta2 = [ones(1), Theta2];
%z1 = X*Theta1;
%size(z1)
%a2 = sigmoid(z1);
%z2 = 

%=======================%

X = [ones(m,1), X]; % add 1s (m+1)xn
a1 = X'; % nx(m+1)
z1 = Theta1*a1;
%size(z1)
g1 = sigmoid(z1); 
a2 = [ones(1,m) ; g1];
%size(a2) 
z2 = Theta2*a2; %10xm
%size(z2)
g2 = sigmoid(z2);
h = g2';

[w, wi] = max(h, [], 2); %max col 
%size(wi)
p = wi;


% =========================================================================


end
