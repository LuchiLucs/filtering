function x = gaussian_particles(dim_x, N, mu, sigma)
%UNIFORM_PARTICLES Summary of this function goes here
%   Detailed explanation goes here
    x =  randn(dim_x, N) .* sigma + mu;
end

