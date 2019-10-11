function particles = predict_robot(particles, u, dt, std_Q)
%PREDICT_ROBOT Summary of this function goes here
%   Detailed explanation goes here
    N = length(particles);
    distance = u(1) * dt + randn(1, N) * std_Q(1);
    particles(3, :) = particles(3, :) + u(2) + randn(1, N) * std_Q(2);
    particles(3, :) = mod(particles(3, :), 2 * pi);
    particles(1, :) = particles(1, :) + cos(particles(3, :)) .* distance;
    particles(2, :) = particles(2, :) + sin(particles(3, :)) .* distance;
end

