function [doppler] = doppler_simulator(ac_vel,vel_std)
%DOPPLER_SIMULATOR Summary of this function goes here
%   Detailed explanation goes here
    vx = ac_vel(1) + randn()*vel_std;
    vz = ac_vel(2) + randn()*vel_std;
    doppler = [vx; vz];
end

