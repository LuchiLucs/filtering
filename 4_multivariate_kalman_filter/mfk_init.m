function kf = mfk_init(dim_x,dim_z,dim_u)
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

kf = struct();

% information
kf.x = zeros(dim_x,1);
kf.P = eye(dim_x);
kf.Q = eye(dim_x);
kf.R = eye(dim_z);
kf.H = ones(dim_z,dim_x);
kf.F = ones(dim_x,dim_x);
kf.B = zeros(dim_x,dim_u);

% functions
kf.predict = [kf.F*kf.x + kf.B*kf.u, kf.F*kf.P*kf.F' + kf.Q];
kf.K = kf.P*kf.H'/(kf.H*kf.P*kf.H'+kf.R);
% Joseph equation to reduce numeric errors
P = (eye(length(P))-K*H)*P*(eye(length(P))-K*H)'+K*R*K';

kf.update = @(z) [kf.x + kf.K*(s.z-s.H*s.x), s.P - K*s.H*s.P];

   
   % Prediction for state vector and covariance:
   s.x = s.A*s.x + s.B*s.u;
   s.P = s.A * s.P * s.A' + s.Q;

   % Compute Kalman gain factor:
   K = s.P*s.H'*inv(s.H*s.P*s.H'+s.R);

   % Correction based on observation:
   s.x = s.x + K*(s.z-s.H*s.x);
   s.P = s.P - K*s.H*s.P;
   
   
end

