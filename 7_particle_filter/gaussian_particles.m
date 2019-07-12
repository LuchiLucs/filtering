function x = gaussian_particles(N, mu, sigma)
%UNIFORM_PARTICLES Summary of this function goes here
%   Detailed explanation goes here
    x =  randn(length(mu), N) .* sigma + mu;
end

