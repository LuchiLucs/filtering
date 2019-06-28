function [xs,zs] = compute_dog_data(z_var, process_var, count, dt)
%COMPUTE_DOG_DATA Summary of this function goes here
%   Detailed explanation goes here
    dim_z = length(z_var);
    x = zeros(dim_z,1);
    x_dot = 1;
    z_std = sqrtm(z_var);
    p_std = sqrtm(process_var);
    xs = cell(1,count);
    zs = cell(1,count);
    for ii = 1:count
        x = x+(x_dot+randn(dim_z,1)*p_std(dim_z))*dt;
        xs{ii} = x;
        zs{ii} = x+randn().*z_std;
    end
end