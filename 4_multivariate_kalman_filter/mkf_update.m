function [x,P] = mkf_update(H,K,x,e,P,R)
%UPDATE Summary of this function goes here
%   Detailed explanation goes here
x = x+K.*e;
% Joseph equation to reduce numeric errors
P = (eye(length(P))-K*H)*P*(eye(length(P))-K*H)'+K*R*K';
end

