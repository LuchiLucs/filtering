function x = robot_move(x, u, dt, wheelbase)
%ROBOT_MOVE Summary of this function goes here
%   Simulate the moving of a robot
%   Implements the state transition function
    orientation = x(3);
    velocity = u(1);
    steering_angle = u(2);
    distance = velocity * dt;

    if abs(steering_angle) > 0.001
        beta = (distance / wheelbase) * tan(steering_angle);
        radius = wheelbase / tan(steering_angle);
        sinh = sin(orientation);
        sinhb = sin(orientation + beta);
        cosh = cos(orientation);
        coshb = cos(orientation + beta);
        x = x + [-radius*sinh + radius*sinhb; radius*cosh - radius*coshb; beta];
    else
        x = x + [distance*cos(orientation); distance*sin(orientation); 0];
    end
       x(3, :) = normalize_angle(x(3, :));
end

