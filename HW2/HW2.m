%% Question 1:
% (a) Load the files for Q1
load('S1_extension.txt')
load('S1_flexion.txt')
load('S2_extension.txt')
load('S2_flexion.txt')

% (b) Create time vector
% t=0 : increment : last point
% 1000Hz, 1000 samples per second

t = 0:1/1000:(10-1/1000);

% (b) Plot data
figure
plot(t, S1_extension)
title('S1 Extension')
ylabel('Amplitude')
xlabel('Time')

figure
plot(t, S1_flexion)
title('S1 Flexion')
ylabel('Amplitude')
xlabel('Time')

figure
plot(t, S2_extension)
title('S2 Extension')
ylabel('Amplitude')
xlabel('Time')

figure
plot(t, S2_flexion)
title('S2 Flexion')
ylabel('Amplitude')
xlabel('Time')

% (c) Calculate the energy of the systems, adjusted for time between samples
E_S1_ext = trapz(t, S1_extension.^2);
E_S1_flex = trapz(t, S1_flexion.^2);
E_S2_ext = trapz(t, S2_extension.^2);
E_S2_flex = trapz(t, S2_flexion.^2);

%% Question 2:
% Calculate the energy over all time
load('normal_sinus.txt')
load('aflut.txt')

t2 = 0:1/250:(10-1/250);

%plot the graphs
figure
plot(t2, normal_sinus)
title('Normal Sinus')
ylabel('Amplitude')
xlabel('Time')

figure
plot(t2, aflut)
title('Atrial Flutter')
ylabel('Amplitude')
xlabel('Time')

%calculations
power_normal = (1/10)*(trapz(t2, (normal_sinus).^2));
power_aflut = (1/10)*(trapz(t2, (aflut).^2));
