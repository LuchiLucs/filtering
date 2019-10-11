function range = h_range(x)
%H_RANGE Summary of this function goes here
%   Detailed explanation goes here
    range = sqrt(x(1, :).^2 + x(3, :).^2);
end

