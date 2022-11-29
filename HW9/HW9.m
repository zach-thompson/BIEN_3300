%% Homework 9
%% Part 1: Calculate the frequency response of a system

w = 0:1:20000;
s = 1i*w;
H_fresponse = 14400 ./ (s.^2 + 168.*s + 14400);

%% Part 2: Plot the amplitude response and phase response of this system
figure;
plot(w, abs(H_fresponse));
xlabel('Frequency (rad/s)');
ylabel('Amplitude Response');

figure;
plot(w, angle(H_fresponse));
xlabel('Frequency (rad/s)');
ylabel('Phase Response');

%% Part 3: If the input torque signal is a cosine that completes 100 cycles per second, what is the signal representing the output eye position
w = 2*pi*100;
s = 1i*w;
H_w = 14400 ./ (s.^2 + 168.*s + 14400);
Magnitude = abs(H_w)
Phase = angle(H_w)

% Output function: 0.0365cos(200*pi*t - 2.871)