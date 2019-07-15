function indexes = simple_resampling(weights)
%MULTI Summary of this function goes here
%   Detailed explanation goes here
    N = length(weights);
    cumulative_sum = cumsum(weights);
    % avoid round-off error
    cumulative_sum(end) = 1;
    n = rand(1, N);
    indexes = zeros(N, 1);
    for ii = 1:N
        indexes(ii) = find(n(ii) <= cumulative_sum, 1);
    end
end

