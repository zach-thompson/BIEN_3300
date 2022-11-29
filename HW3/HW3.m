%% Part B: Create a vector representing the given signal using the unit

% Create a time vector for the function from -5:5 in .001 second increments
t = -5:.001:5;

% Create a vector for the desired signals using the given equations
signal = (unit_step(t+2)-unit_step(t-1)).*(t.^3) + (unit_step(t-1)-unit_step(t-3)).*(cos(2.*pi.*t)) - (2.*unit_step(t-3)-unit_step(t-4));

% Plot the signal
figure
plot(t, signal)
ylabel('x(t)')
xlabel('t')
ylimit = [-8;2];
ylim(ylimit);