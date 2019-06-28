function [sigmas,Wm,Wc] = merweScaledSigmaPoints(alpha,beta,kappa,dims,x,P)
%MERWESCALEDSIGMAPOINTS Van der Merwe's Scaled Sigma Point Algorithm
%   Detailed explanation goes here

points_number = 2*dims+1;
lambda = alpha^2*(dims+kappa)-dims;

% calculate sigma points' weights
temp = 1/(2*(dims+lambda));
Wc = temp*ones(1,points_number);
Wm = temp*ones(1,points_number);
Wc(1) = lambda/(dims+lambda)+(1-alpha^2+beta);
Wm(1) = lambda/(dims+lambda);

% calculate sigma points
temp = sqrtm((dims+lambda)*P);
sigmas = x.*ones(dims,points_number);
sigmas(:,2:dims+1) = sigmas(:,2:dims+1)+temp;
sigmas(:,dims+2:2*dims+1) = sigmas(:,dims+2:2*dims+1)-temp;
end

