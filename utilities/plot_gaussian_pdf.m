function plot_gaussian_pdf(x, pdf, mu, sigma, opt_text)
%PLOT_GAUSSIAN_PDF Summary of this function goes here
%   Detailed explanation goes here
    if (~exist('opt_text', 'var'))
        opt_text = '';
    end
    plot(x,pdf,'LineWidth',2,'DisplayName',[opt_text 'N(\mu=' num2str(mu) ', \sigma=' num2str(sigma) ')'])
end

