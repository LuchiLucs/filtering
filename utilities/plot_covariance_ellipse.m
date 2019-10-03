function plot_covariance_ellipse(mu, sigma, p, c, ss)
    s = -2 * log(1 - p);
    [V, D] = eig(sigma * s);
    t = linspace(0, 2 * pi);
    a = (V * sqrt(D)) * [cos(t(:))'; sin(t(:))'];
    x = a(1, :) + mu(1);
    y = a(2, :) + mu(2);
    
    
    % ellipse contour
    h1 = plot(x, y, c);
   
    % ellipse center
    h2 = plot(mu(1), mu(2), c);
    h2.Marker = '+';
    h2.Annotation.LegendInformation.IconDisplayStyle = 'off';
    
    % ellipse area
    h3 = fill(x, y, c);
    h3.FaceAlpha = 0.2;
    h3.Annotation.LegendInformation.IconDisplayStyle = 'off';
        
    if nargin >= 5
        h1.DisplayName = ss;
    end
end

