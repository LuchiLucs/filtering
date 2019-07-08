function [new_ac_pos] = aircraft_simulator(ac_pos, ac_vel, ac_vel_std, dt)
%AIRCRAFT_SIMULATOR Summary of this function goes here
%   Detailed explanation goes here
	dx =  ac_vel*dt + (randn() * ac_vel_std) * dt;
    new_ac_pos = ac_pos + dx;
end

