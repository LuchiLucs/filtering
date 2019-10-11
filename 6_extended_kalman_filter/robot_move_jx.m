function Fx = robot_move_jx(x, u, wheelbase, dt)
%ROBOT_MOVE_JACOB Summary of this function goes here
%   Detailed explanation goes here
    
%     syms xx yy th v a w t real
%     d = v * t;
%     r = w / tan(a);
%     b = (d / w) * tan(a);
%     fxu = [xx - r * sin(th) + r * sin(th + b), yy + r * cos(th) - r * cos(th + b), th + b]';
%     Fx = jacobian(fxu, [xx yy th]);
%     Fx = double(subs(Fx, [xx yy th v a w t], [x' u' wheelbase dt]));

    distance = dt * u(1);
    tan_alpha = tan(u(2));
    Fx = [1 0 (wheelbase * (cos(x(3) + (distance * tan_alpha)/wheelbase) - cos(x(3))))/tan_alpha;
          0 1 (wheelbase * (sin(x(3) + (distance * tan_alpha)/wheelbase) - sin(x(3))))/tan_alpha;
          0 0 1];
end

