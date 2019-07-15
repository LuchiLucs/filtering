function [particles_mu, particles_var] = pf_estimate(particles, weights)
%PF_ESTIMATE Summary of this function goes here
%   Detailed explanation goes here
    particles_mu = particles * weights;
    particles_var = (particles - particles_mu).^2 * weights;
%     particles_var = var(particles, weights, 2);
end

