function radar = h_radar(x)
%RADAR Summary of this function goes here
%   Detailed explanation goes here
    radar_pos = [0, 0];
    dx = x(1,:) - radar_pos(1);
    dy = x(3,:) - radar_pos(2);
    slant_range = sqrt(dx.^2 + dy.^2);
    elevation_angle = atan2(dy, dx);
    radar = [slant_range; elevation_angle];
end

