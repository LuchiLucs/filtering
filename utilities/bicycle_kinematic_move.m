function x = bicycle_kinematic_move(x, u, dt, wheelbase)
%ROBOT_MOVE Summary of this function goes here
%   Simulate the moving of a bycicle
%   Implements the state transition function kinematics equations

    orientation = x(3);
    velocity = u(1);
    steering_angle = u(2);
    distance = velocity * dt;
    beta = (distance / wheelbase) * tan(steering_angle);
    radius = wheelbase / tan(steering_angle);
    
    x = x + [-radius * sin(orientation) + radius * sin(orientation + beta), radius * cos(orientation) - radius * cos(orientation + beta), beta]';
    x(3, :) = normalize_angle(x(3, :));
end

