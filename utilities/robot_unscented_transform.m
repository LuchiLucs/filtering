function [x, P] = robot_unscented_transform(points, Wm, Wc, N, wma)
%ROBOT_UNSCENTED_TRANSFORM
    
    n = size(points, 1);
    
    % computed mean
    x(1:n-1, :) = points(1:n-1, :) * Wm';
    x(n, :) = wma(points(n, :), Wm);
    
    % depolarization
    y = points - x;
    y(n, :) = wrapToPi(y(n, :));
    
    % computed covariance
    P = y * diag(Wc) * y' + N;
end

