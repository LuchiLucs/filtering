function x = normalize_angle(x)
%NORMALIZE_ANGLE Normalize an angle to [-pi, pi)
%   nx = normalize_angle(x)
%   x = input angle
%   nx = normalized output angle

    % force in range [0, 2 pi)
    x = mod(x, 2*pi);
    
    % move to [-pi, pi) if x > pi     
    x = x - 2*pi * (x > pi);
end

