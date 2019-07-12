function Fx = robot_move_jx(dt)
%ROBOT_MOVE_JACOB Summary of this function goes here
%   Detailed explanation goes here
    
%     orientation = x(3);
%     velocity = u(1);
%     steering_angle = u(2);
%     distance = velocity * dt;
%     beta = (distance / wheelbase) * tan(steering_angle);
%     radius = wheelbase / tan(steering_angle);
% 
%     sinh = sin(orientation);
%     sinhb = sin(orientation + beta);
%     cosh = cos(orientation);
%     coshb = cos(orientation + beta);   
%     x = x + [-radius*sinh + radius*sinhb, radius*cosh - radius*coshb, beta]';

    syms x y theta v alpha w t real
    d = v * t;
    r = w / tan(alpha);
    beta = (d / w) * tan(alpha);
    fxu = [x - r * sin(theta) + r * sin(theta + beta), y + r * cos(theta) - r * cos(theta + beta), theta + beta]';
    Fx = jacobian(fxu, [x y theta]);
%     subs(Fx, v * t, d);
%     subs(Fx, (d / w) * tan(alpha), beta);
%     subs(Fx, w / tan(alpha), r)
end

