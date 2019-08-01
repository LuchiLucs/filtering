function indexes = systematic_resampling(weights)
%SYSTEMATIC_RESAMPLING Summary of this function goes here
%   Make N subdivisions, choose positions with a consistent random offset
    N = length(weights);
    positions = ((0:N-1) + rand()) / N;
    indexes = zeros(N, 1);
    cumulative_sum = cumsum(weights);
    i = 1;
    j = 1;
    while i <= N
        if positions(i) < cumulative_sum(j)
            indexes(i) = j;
            i = i + 1;
        else
            j = j + 1;
        end
    end
end

