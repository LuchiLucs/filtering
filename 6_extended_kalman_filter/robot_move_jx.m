function Fx = robot_move_jx(x, u, wheelbase, dt)
%ROBOT_MOVE_JACOB Summary of this function goes here
%   Detailed explanation goes here
    
    syms xx yy th v a w t real
    d = v * t;
    r = w / tan(a);
    b = (d / w) * tan(a);
    fxu = [xx - r * sin(th) + r * sin(th + b), yy + r * cos(th) - r * cos(th + b), th + b]';
    Fx = jacobian(fxu, [xx yy th]);
    Fx = vpa(subs(Fx, [xx yy th v a w t], [x' u' wheelbase dt]));
end

