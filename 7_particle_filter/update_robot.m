function [outputArg1,outputArg2] = update_robot(particles, weights, z, mu, std_R)
%UPDATE_ROBOR Summary of this function goes here
%   Detailed explanation goes here

    % update
    for jj = 1:size(landmarks, 2)
        dist = vecnorm(particles(1:2, :) - landmarks(:, jj));
        weights = weights .* normpdf(z(jj), dist, std_R(1))';
    end
    % round-off errors
    weights = weights + 1e-300;
    weights = weights / sum(weights);
end

