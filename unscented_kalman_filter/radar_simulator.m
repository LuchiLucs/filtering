function radar = radar_simulator(r_pos,range_std,elevation_angle_std,ac_pos)
%RADAR_SIMULATOR Summary of this function goes here
%   rng = slant range
%   brg = elevation angle (bearing)
    diff = ac_pos - r_pos;
    rng = norm(diff) + randn()*range_std;
    brg = atan2(diff(2), diff(1)) + randn()*elevation_angle_std;
    radar = [rng; brg];
end

