function radar = h_radar_jacob(x)
%H_RADAR_JACOB Summary of this function goes here
%   Detailed explanation goes here
    distance = x(1, :);
    altitude = x(3, :);
    denominator = sqrt(distance.^2 + altitude.^2);
    radar = [distance/denominator 0 altitude/denominator];
end

