function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% finally tried a for loop and got it right!
mu = mean(X);
sigma = std(X);

for i = 1:size(X,1);
    X(i,:) = (X(i,:) - mu)./sigma;
end
X_norm = X;

% same day, after looking online and better understanding what I'm being asked
% overcomplicated because I don't know any better
% also still wrong (dumb internet people, guy said to use .- and ./)

%{
mu = mean(X);
mu_1 = mu(1)*ones(size(X,1),1);
mu_2 = mu(2)*ones(size(X,1),1); 
BIGmu = [mu_1,mu_2]

sigma = std(X);
sig_1 = sigma(1)*;
sig_2 = sigma(2)

BIGmu = mu*ones(size(X,1))
BIGsigma = sigma*ones(size(X,1))
X_norm = (X - BIGmu)/sigma(1);
%}

% first attempt on 4/21/16 - wrong
%{
meanX_1 = mean(X(:,1));
meanX_2 = mean(X(:,2));
stdX_1 = std(X(:,1));
stdX_2 = std(X(:,2));
X_1 = (X(:,1)- meanX_1)/stdX_1;
X_2 = (X(:,2)- mean(X(:,2)))/stdX_2;
X_norm = [X_1, X_2];
%these last two lines were in post to see if the rest of my
code was correct. it was not.
mu = mean(X); 
sigma = std(X);
%}

% ============================================================

end
