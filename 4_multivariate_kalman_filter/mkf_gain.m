function K = mkf_gain(H,P_prior,R)
%MKF_GAIN Summary of this function goes here
%   Detailed explanation goes here
K = P_prior*H'/(H*P_prior*H'+R);
end

