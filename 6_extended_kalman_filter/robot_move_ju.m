function Fu = robot_move_ju(x, u, wheelbase, dt)
%H_ROBOT_JACOB Summary of this function goes here
%   Detailed explanation goes here

%     syms xx yy th v a w t real
%     d = v * t;
%     r = w / tan(a);
%     b = (d / w) * tan(a);
%     fxu = [xx - r * sin(th) + r * sin(th + b), yy + r * cos(th) - r * cos(th + b), th + b]';
%     Fu = jacobian(fxu, [v a]);
%     Fu = double(subs(Fu, [xx yy th v a w t], [x' u' wheelbase dt]));
%     
    distance = dt * u(1);
    tan_alpha = tan(u(2));
    tan_alpha2 = tan_alpha^2;
    Fu =    [ dt*cos(x(3) + (distance*tan_alpha)/wheelbase), ((tan_alpha2 + 1)*(wheelbase*sin(x(3)) - wheelbase*sin(x(3) + (distance*tan_alpha)/wheelbase) + distance*cos(x(3) + (distance*tan_alpha)/wheelbase)*tan_alpha))/tan_alpha2;
              dt*sin(x(3) + (distance*tan_alpha)/wheelbase), ((tan_alpha2 + 1)*(wheelbase*cos(x(3) + (distance*tan_alpha)/wheelbase) - wheelbase*cos(x(3)) + distance*sin(x(3) + (distance*tan_alpha)/wheelbase)*tan_alpha))/tan_alpha2;
             (dt*tan_alpha)/wheelbase,                      (distance*(tan_alpha2 + 1))/wheelbase];
end

