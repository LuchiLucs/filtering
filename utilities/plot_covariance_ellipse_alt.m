function plot_covariance_ellipse_alt(mu, sigma, p, color, alpha, displayString)
    for ii = 1 : length(p)
       s = -2 * log(1 - p(ii));
        [V, D] = eig(sigma * s);
        t = linspace(0, 2 * pi);
        a = (V * sqrt(D)) * [cos(t(:))'; sin(t(:))'];
        x = a(1, :) + mu(1);
        y = a(2, :) + mu(2);
        
        % ellipse contour
        h1 = plot(x, y, color, 'LineWidth', 2);
        h1.Annotation.LegendInformation.IconDisplayStyle = 'off';
    end
    % ellipse center
    h2 = plot(mu(1), mu(2), color, 'LineWidth', 2);
    h2.Marker = '+';
    h2.Annotation.LegendInformation.IconDisplayStyle = 'off';

    % ellipse area
    h3 = fill(x, y, color);
    h3.FaceAlpha = alpha;
    h3.EdgeColor = color;
    h3.Annotation.LegendInformation.IconDisplayStyle = 'on';

    if nargin >= 6
        h3.DisplayName = displayString;
    end
end

