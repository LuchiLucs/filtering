function e = mkf_innovation(H,z,x_prior)
%MKF_INNOVATION Summary of this function goes here
%   Detailed explanation goes here
e = z - H*x_prior;
end

