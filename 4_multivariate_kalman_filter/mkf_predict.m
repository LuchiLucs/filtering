function [x, P] = mkf_predict(F,B,x,u,P,Q)
%PREDICT Summary of this function goes here
%   Detailed explanation goes here
    x = F*x + B*u;
    P = F*P*F' + Q;
end

