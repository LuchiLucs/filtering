function [x,P] = unscented_transform(sigmas, Wm, Wc, Q)
%UNTITLED Summary of this function goes here
%   sigmas: dim_x rows and 2*dim_x+1 columns. The rows are the dimensions
%   and the columns are the points.
%   Wm: weights of the points for the mean computation
%   Wc: weights of the points for the covariance computation
%   Q: process covariance


%% Computed mean from deterministic sampled points
x = sigmas*Wm';

%% Computed covariance from deterministic sampled points
% depolarization 
y = sigmas - x;
P = y * diag(Wc) * y' + Q;

end

