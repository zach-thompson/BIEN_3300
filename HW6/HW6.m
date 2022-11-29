%% HW 6
% Read in the twnkl file, s contains the signal and fs contains sampling frequency
[s, fs] = audioread('twnkl_np.wav');

% Play the file
soundsc(s, fs)

% Read in the concert hall file
[h_ch, fs2] = audioread('concertHall.wav');

% Create a time vector for the file and plot it
t = 0:1/fs2:(length(h_ch) - 1) / fs2;
plot(t, h_ch)
title("Concert Hall Impulse");
xlabel("Time (s)");
ylabel("Amplitude");

% Play the file
soundsc(h_ch, fs2)

% Convolve the sound signal with the impulse response and play
s_ch = conv(s, h_ch);
soundsc(s_ch);