function brg = bearing(sensor, target_pos)
%BEARING Summary of this function goes here
%   Calculate the bearing between a target and a sensor,
%   that's the angle between two position points.
    brg = atan2(target_pos(2) - sensor(2), target_pos(1) - sensor(1));
end

