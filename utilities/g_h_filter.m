function [predictions,estimates] = g_h_filter(measures,x0,dx0,g,h,dt)
%G_H_FILTER g-h filter implementation given constant values of g and h
%   measures
%   x0                  state 1 initial condition
%   dx0                 state 2 initial condition                
%   g                   g filter value
%   h                   h filter value
%   dt                  dt value
%   predictions         vector of the predictions
%   estimates           vector of the estimates

    % output data structures
    predictions = zeros(1,length(measures));
    estimates = zeros(1,length(measures));

    % state initialization
    x_est = x0;
    dx_est = dx0;

    % filtering
    for ii=1:length(measures)
        z =  measures(ii);

        % prediction step
        x_pred = x_est + (dx_est*dt);       % prediction of state 1
        dx_pred = dx_est;                   % prediction of state 2    
        predictions(ii) = x_pred;

        % update step (estimation)
        residual = z - x_pred;              % residual calculation
        x_est = x_pred + g*residual;        % update state 1 (estimation)
        dx_est = dx_pred + h*residual/dt;   % update state 2 (estimation)
        estimates(ii) = x_est;              % saving
    end
end

