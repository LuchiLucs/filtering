function Fu = robot_move_ju(x, u, dt, wheelbase)
%H_ROBOT_JACOB Summary of this function goes here
%   Detailed explanation goes here

    syms x y theta v alpha w r t
    d = v * t;
    beta = (d / w) * tan(alpha);
    fxu = [x - r * sin(theta) + r * sin(theta + beta), y + r * cos(theta) - r * cos(theta + beta), theta + beta]';
    Fu = jacobian(fxu, [v alpha]);

end

