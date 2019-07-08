function [h, h_c] = plot_covariance_ellipse(mu, sigma, p)
    s = -2 * log(1 - p);
    [V, D] = eig(sigma * s);
    t = linspace(0, 2 * pi);
    a = (V * sqrt(D)) * [cos(t(:))'; sin(t(:))'];
    x = a(1, :) + mu(1);
    y = a(2, :) + mu(2);
    h = plot(a(1, :) + mu(1), a(2, :) + mu(2));
    h_c = plot(mu(1), mu(2), '+');
    h_c.Annotation.LegendInformation.IconDisplayStyle = 'off';
end

