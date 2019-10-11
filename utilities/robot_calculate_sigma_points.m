function sigmas = robot_calculate_sigma_points(x, P, alpha, kappa, dim_x)
%ROBOT_CALCULATE_SIGMA_POINTS
    points_number = 2*dim_x + 1;
    lambda = alpha^2 * (dim_x+kappa) - dim_x;    
    % calculate sigma points
    temp = sqrtm((dim_x+lambda) * P);
    sigmas = x.*ones(dim_x, points_number);
    sigmas(3, :) = wrapToPi(sigmas(3, :));
    sigmas(:, 2:dim_x+1) = sigmas(:, 2:dim_x+1) + temp;
    sigmas(:, dim_x+2:points_number) = sigmas(:, dim_x+2:points_number) - temp;
    sigmas(3, :) = wrapToPi(sigmas(3, :));
    
end

