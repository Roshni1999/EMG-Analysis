%% Plot results

[num_a,txt_a,raw_a] = xlsread('Results.xlsx', 'Amplitude');
[num_f,txt_f,raw_f] = xlsread('Results.xlsx', 'Frequency');

%% RMS amplitude
dist = [2; 2.5; 3]; %cm
right_ESVI_rms = num_a(1:3, 5);
right_Medtronic_rms = num_a(4:6, 5);
left_ESVI_rms = num_a(7:9, 5);
left_Medtronic_rms = num_a(10:12, 5);

figure(1); hold on
plot(dist, right_ESVI_rms, '-*', LineWidth=1);
plot(dist, right_Medtronic_rms, '-*', LineWidth=1);
plot(dist, left_ESVI_rms, '-*', LineWidth=1);
plot(dist, left_Medtronic_rms, '-*', LineWidth=1);
xlabel('Distance between +ve and -ve electrode'); ylabel('RMS Amplitude (mV)');
legend('Right biceps: ESVI electrode', 'Right biceps: Medtronic electrode', 'Left biceps: ESVI electrode', 'Left biceps: Medtronic electrode');

%% Mean amplitude
dist = [2; 2.5; 3]; %cm
right_ESVI_mean = num_a(1:3, 9);
right_Medtronic_mean = num_a(4:6, 9);
left_ESVI_mean = num_a(7:9, 9);
left_Medtronic_mean = num_a(10:12, 9);

figure(2); hold on
plot(dist, right_ESVI_mean, '-*', LineWidth=1);
plot(dist, right_Medtronic_mean, '-*', LineWidth=1);
plot(dist, left_ESVI_mean, '-*', LineWidth=1);
plot(dist, left_Medtronic_mean, '-*', LineWidth=1);
xlabel('Distance between +ve and -ve electrode'); ylabel('Mean Amplitude (mV)');
legend('Right biceps: ESVI electrode', 'Right biceps: Medtronic electrode', 'Left biceps: ESVI electrode', 'Left biceps: Medtronic electrode');

%% Max amplitude
dist = [2; 2.5; 3]; %cm
right_ESVI_max = num_a(1:3, 13);
right_Medtronic_max = num_a(4:6, 13);
left_ESVI_max = num_a(7:9, 13);
left_Medtronic_max = num_a(10:12, 13);

figure(3); hold on
plot(dist, right_ESVI_max, '-*', LineWidth=1);
plot(dist, right_Medtronic_max, '-*', LineWidth=1);
plot(dist, left_ESVI_max, '-*', LineWidth=1);
plot(dist, left_Medtronic_max, '-*', LineWidth=1);
xlabel('Distance between +ve and -ve electrode'); ylabel('Max Amplitude (mV)');
legend('Right biceps: ESVI electrode', 'Right biceps: Medtronic electrode', 'Left biceps: ESVI electrode', 'Left biceps: Medtronic electrode');

%% Mean Frequency
dist = [2; 2.5; 3]; %cm
right_ESVI_mean_freq = num_f(1:3, 5);
right_Medtronic_mean_freq = num_f(4:6, 5);
left_ESVI_mean_freq = num_f(7:9, 5);
left_Medtronic_mean_freq = num_f(10:12, 5);

figure(4); hold on
plot(dist, right_ESVI_mean_freq, '-*', LineWidth=1);
plot(dist, right_Medtronic_mean_freq, '-*', LineWidth=1);
plot(dist, left_ESVI_mean_freq, '-*', LineWidth=1);
plot(dist, left_Medtronic_mean_freq, '-*', LineWidth=1);
xlabel('Distance between +ve and -ve electrode'); ylabel('Mean Frequency (Hz)');
legend('Right biceps: ESVI electrode', 'Right biceps: Medtronic electrode', 'Left biceps: ESVI electrode', 'Left biceps: Medtronic electrode');

%% Median Frequency
dist = [2; 2.5; 3]; %cm
right_ESVI_med_freq = num_f(1:3, 9);
right_Medtronic_med_freq = num_f(4:6, 9);
left_ESVI_med_freq = num_f(7:9, 9);
left_Medtronic_med_freq = num_f(10:12, 9);

figure(5); hold on
plot(dist, right_ESVI_mean_freq, '-*', LineWidth=1);
plot(dist, right_Medtronic_mean_freq, '-*', LineWidth=1);
plot(dist, left_ESVI_mean_freq, '-*', LineWidth=1);
plot(dist, left_Medtronic_mean_freq, '-*', LineWidth=1);
xlabel('Distance between +ve and -ve electrode'); ylabel('Median Frequency (Hz)');
legend('Right biceps: ESVI electrode', 'Right biceps: Medtronic electrode', 'Left biceps: ESVI electrode', 'Left biceps: Medtronic electrode');



