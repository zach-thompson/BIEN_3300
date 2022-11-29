%% Load the Weights1 data
load('Weights1.txt');

% Extract just the force in the z-direction
Fz1 = Weights1(:,3);
figure
subplot (1,2,1), plot(Fz1);
xlabel('Data Point')
ylabel('Force Z (N)')
title('Weights 1')

% Calculate the mean output values for each input condition
Fout1(1) = mean(Fz1(2100:2200));
Fout1(2) = mean(Fz1(1660:1820));
Fout1(3) = mean(Fz1(1475:1640));
Fout1(4) = mean(Fz1(1265:1440));
Fout1(5) = mean(Fz1(1090:1240));
Fout1(6) = mean(Fz1(950:1070));

% Create a vector of input conditions
input_weights = (0:10:50);

% Plot input vs output
subplot(1,2,2), plot(input_weights, Fout1);
xlabel('Weight (lbs)')
ylabel('Force Z (N)')
title('Weights 1')

% Plot the plotregression
figure
plotregression(input_weights, Fout1, 'Weights1')

%% Load the Weights2 data
load('Weights2.txt');

% Extract just the force in the z-direction
Fz2 = Weights2(:,3);
figure
subplot(1,2,1), plot(Fz2);
xlabel('Data Point')
ylabel('Force Z (N)')
title('Weights 2')

% Calculate the mean output values for each input condition
Fout2(1) = mean(Fz2(2150:2250));
Fout2(2) = mean(Fz2(1770:1940));
Fout2(3) = mean(Fz2(1550:1745));
Fout2(4) = mean(Fz2(1320:1520));
Fout2(5) = mean(Fz2(1125:1300));
Fout2(6) = mean(Fz2(1005:1110));

% Plot input vs output
subplot(1,2,2), plot(input_weights, Fout2);
xlabel('Weight (lbs)')
ylabel('Force Z (N)')
title('Weights 2')

% Plot the plotregression
figure
plotregression(input_weights, Fout2, 'Weights2')