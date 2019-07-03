function [sigmas] = merwe_points(alpha,beta,kappa,dims,x,P)
%MERWESCALEDSIGMAPOINTS Van der Merwe's Scaled Sigma Point Algorithm
%   sigmas  Sigma points

points_number = 2*dims+1;
lambda = alpha^2*(dims+kappa)-dims;

% calculate sigma points
temp = sqrtm((dims+lambda)*P);
sigmas = x.*ones(dims,points_number);
sigmas(:,2:dims+1) = sigmas(:,2:dims+1)+temp;
sigmas(:,dims+2:2*dims+1) = sigmas(:,dims+2:2*dims+1)-temp;
end

