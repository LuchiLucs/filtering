function x = uniform_particles(N, ranges)
%UNIFORM_PARTICLES Summary of this function goes here
%   Detailed explanation goes here
    x =  rand(length(ranges), N) .* (ranges(:, 2) - ranges(:, 1)) + ranges(:, 1);
end

