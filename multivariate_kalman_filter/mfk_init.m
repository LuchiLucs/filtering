function [x,P,F,H,B,Q,R] = mfk_init(dim_x,dim_z,dim_u)
%MFK_INIT Init of kalman filter matrixes
% x : ndarray (dim_x, 1), default = [0,0,0…0]
%     filter state estimate
% P : ndarray (dim_x, dim_x), default eye(dim_x)
%     covariance matrix
% Q : ndarray (dim_x, dim_x), default eye(dim_x)
%     Process uncertainty/noise
% R : ndarray (dim_z, dim_z), default eye(dim_x)
%     measurement uncertainty/noise
% H : ndarray (dim_z, dim_x)
%     measurement function
% F : ndarray (dim_x, dim_x)
%     state transistion matrix
% B : ndarray (dim_x, dim_u), default 0
x = zeros(dim_x,1);
P = eye(dim_x);
Q = eye(dim_x);
R = eye(dim_z);
H = ones(dim_z,dim_x);
F = ones(dim_x,dim_x);
B = zeros(dim_x,dim_u);
end

