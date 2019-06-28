function measures = generate_measures(x0, dx0, number, noise_factor)
    % Generate measures with:
    %   x0              starting value
    %   dx0             drift value
    %   number          number of samples
    %   noise_factor    noise_factor (standard deviation of the white noise) of the gaussian distribuited noise
    %                   affecting the generation of samples
    measures = x0 + dx0*(1:1:number) + randn(1,number)*noise_factor;
end

