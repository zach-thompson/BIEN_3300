% HW5 - Find zero input response and plot it
% Helps visualize the modes/respsonse and see effects of changing initial conditions and system model

%% Part 1
% (a) Assume model parameters
B = 8;
M = 1;
K = 4;

% (b) Use roots function to find characteristic roots
char_coefs = [1, B/M, K/M];
char_roots = roots(char_coefs);

% (c) Plot the characteristic modes for time t = 0:.01:3
t = 0:.01:3;
char_mode1 = exp(char_roots(1)*t);
char_mode2 = exp(char_roots(2)*t);

plot (t, char_mode1, t, char_mode2);
xlabel('Time (s)')
ylabel('Displacement')
title('Part 1 Characteristic Mode')

% (d) Determine and plot the zero-input response assuming initial conditions y(0) = 1 and y'(0) = -1
A = [1,1;char_roots(1), char_roots(2)];
i_c = [1;-1];
c = A \ i_c;
y01a = c(1)*char_mode1 + c(2)*char_mode2;

% Equation: y_o = 0.067*exp(-7.4641*t) + 0.9330*exp(-0.5359*t)


% (e) Determine and plot the zero input response assuming initial conditions y(0) = 0 and y'(0) = 2
i_c2 = [0;2];
c2 = A \ i_c2;
y01b = c2(1)*char_mode1 + c2(2)*char_mode2;
% Equation: y_o = -0.029*exp(-7.4641*t) + 0.029*exp(-0.5359*t)

figure
plot(t, y01a, t, y01b)
title('Part 1 Zero Input Response');
xlabel('Time (s)');
ylabel('Displacement');

%% Part 2: Change the parameters of the model
B = 4;
M = 1;
K = 64;

% (b) Use roots function to find characteristic roots
char_coefs = [1, B/M, K/M];
char_roots = roots(char_coefs);

% (c) Plot the characteristic modes for time t = 0:.01:3
t = 0:.01:3;
char_mode1 = exp(char_roots(1)*t);
char_mode2 = exp(char_roots(2)*t);

figure
plot (t, real(char_mode1), t, real(char_mode2));
xlabel('Time (s)')
ylabel('Displacement')
title('Part 2 Characteristic Mode')

% (d) Determine and plot the zero-input response assuming initial
% conditions y(0) = 1 and y'(0) = -1
A = [1,1;char_roots(1), char_roots(2)];
i_c = [1;-1];
c = A \ i_c;
y02 = c(1)*char_mode1 + c(2)*char_mode2;
% Equation: y_o = (0.5 - 0.065i)*exp(-7.4641*t) + (0.5 + .065i)*exp(-0.5359*t)

figure
plot (t, y02);
xlabel('Time (s)')
ylabel('Displacement')
title('Part 2 Zero Impulse Response')