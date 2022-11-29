function [u] = unit_step(t)
%UNIT STEP - Outputs the value of the unit step function of for the input
% time t, which can be a scalar or vector

% initialize the output u
u=zeros(size(t));

% loop through each element in the time vector
for(i = 1: length(t))
    % evaluate the i^th element of t and set that element of u
    if t(i) < 0
        u(i) = 0;
    else
        u(i) = 1;
    end
end

