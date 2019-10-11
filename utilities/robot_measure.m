function z = robot_measure(robot_pos, landmarks, range_std, bearing_std, dim_z)
%ROBOT_MEASURE Calculate robot measurements given its current position and
%landmarks
    distance = vecnorm(landmarks - robot_pos(1:2)) + randn() * range_std;
    bearing = atan2(landmarks(2, :) - robot_pos(2), landmarks(1, :) - robot_pos(1));
    angle = normalize_angle(bearing - robot_pos(3) + randn() * bearing_std);
    z = [distance; angle];
    z = reshape(z, dim_z, 1);
end

