function angles = h_vor(x)
%H_VOR Summary of this function goes here
%   Detailed explanation goes here
    % hardcoded sensors position
    sa_pos = [-400, 0];
    sb_pos = [400, 0];
    % target position
    pos = [x(1,:); x(3,:)];
    % angles between sensors and target position
    angle_a = atan2(pos(2,:) - sa_pos(2), pos(1,:) - sa_pos(1));
    angle_b = atan2(pos(2,:) - sb_pos(2), pos(1,:) - sb_pos(1));
    angles = [angle_a; angle_b];
end

