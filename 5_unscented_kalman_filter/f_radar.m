function new_x = f_radar(x, dt)
%F_RADAR Summary of this function goes here
%   Detailed explanation goes here
    F = [1, dt, 0;0, 1, 0;0, 0, 1];
	new_x = F*x;
end

