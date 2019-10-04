function Fu = robot_move_ju(x, u, wheelbase, dt)
%H_ROBOT_JACOB Summary of this function goes here
%   Detailed explanation goes here

    syms xx yy th v a w t real
    d = v * t;
    r = w / tan(a);
    b = (d / w) * tan(a);
    fxu = [xx - r * sin(th) + r * sin(th + b), yy + r * cos(th) - r * cos(th + b), th + b]';
    Fu = jacobian(fxu, [v a]);
    Fu = vpa(subs(Fu, [xx yy th v a w t], [x' u' wheelbase dt]));
end

