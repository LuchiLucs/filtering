function angles = measurement(A_pos, B_pos, pos)
%MEASUREMENT Summary of this function goes here
%   Detailed explanation goes here
    angle_a = bearing(A_pos, pos);
    angle_b = bearing(B_pos, pos);
    angles = [angle_a; angle_b];
end

