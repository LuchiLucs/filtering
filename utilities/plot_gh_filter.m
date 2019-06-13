function plot_gh_filter(measures,predictions,estimates,values,time,x0)
%PLOT_GH_FILTER Summary of this function goes here
%   Detailed explanation goes here
set(0, 'DefaultLineLineWidth', 2);
plot(time(2:end),measures,'ko','DisplayName','measures');
hold on;grid on;
plot(time(2:end),predictions,'r-o','DisplayName','predictions');
plot(time,[x0 estimates],'b-o','DisplayName','estimates');
plot(time(1),x0,'b*','DisplayName','initial condition x_0');
plot(time,values,'k--','DisplayName','values');
legend('Location','best');
end

