function [Wm,Wc] = merwe_weights(alpha,beta,kappa,dims)
%MERWESCALEDSIGMAPOINTS Van der Merwe's Scaled Sigma Point Algorithm
%   Wm  Weights regarding the mean
%   Wc  Weights regarding the covariance
points_number = 2*dims+1;
lambda = alpha^2*(dims+kappa)-dims;

% calculate sigma points' weights
temp = 1/(2*(dims+lambda));
Wc = temp*ones(1,points_number);
Wm = temp*ones(1,points_number);
Wc(1) = lambda/(dims+lambda)+(1-alpha^2+beta);
Wm(1) = lambda/(dims+lambda);
end

