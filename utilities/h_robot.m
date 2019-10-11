function hx = h_robot(x, landmarks)
%H_ROBOT Takes a state variable and returns the measurement that would correspond to that state.
%   Detailed explanation goes here
    [n, m] = size(landmarks);
    hx = zeros(n*m, size(x, 2));
    for jj = 1 : m
        distance = sqrt((landmarks(1, jj) - x(1, :)).^2 + (landmarks(2, jj) - x(2, :)).^2);
        angle = atan2(landmarks(2, jj) - x(2, :), landmarks(1, jj) - x(1, :));
        hx(2*jj-1:2*jj, :) =  [distance; normalize_angle(angle - x(3))];
    end
end

