%% Run section-wise 


%% Right biceps small (ESVI) electrode; Distance between electrodes = 2cm
clear; close all; clc
fs = 10000; ts = 1/fs;

data = load('right_small_2cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.26 & T <= 2.85);
ind2 = find(T >= 4.4 & T <= 6.5);
ind3 = find(T >= 8.5 & T <= 10);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);


%% Right biceps small (ESVI) electrode; Distance between electrodes = 2.5cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('right_small_2.5cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.33 & T <= 3.44);
ind2 = find(T >= 5 & T <= 7);
ind3 = find(T >= 8.36 & T <= 10.38);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Right biceps small (ESVI) electrode; Distance between electrodes = 3cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('right_small_3cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.17 & T <= 4.22);
ind2 = find(T >= 4.34 & T <= 7.76);
ind3 = find(T >= 7.87 & T <= 11.6);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Right biceps big (Medtronic) electrode; Distance between electrodes = 2cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('right_big_2cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 1.82 & T <= 4.05);
ind2 = find(T >= 4.91 & T <= 7.28);
ind3 = find(T >= 7.88 & T <= 10.46);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Right biceps big (Medtronic) electrode; Distance between electrodes = 2.5cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('right_big_2.5cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 1.31 & T <= 4.35);
ind2 = find(T >= 4.92 & T <= 7.62);
ind3 = find(T >= 9.12 & T <= 11.59);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Right biceps big (Medtronic) electrode; Distance between electrodes = 3cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('right_big_3cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.53 & T <= 2.87);
ind2 = find(T >= 3.47 & T <= 6.16);
ind3 = find(T >= 6.25 & T <= 9.64);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Left biceps small (ESVI) electrode; Distance between electrodes = 2cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('left_small_2cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.47 & T <= 2.33);
ind2 = find(T >= 3.87 & T <= 6.16);
ind3 = find(T >= 7.74 & T <= 9.51);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Left biceps small (ESVI) electrode; Distance between electrodes = 2.5cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('left_small_2.5cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 1.17 & T <= 3.85);
ind2 = find(T >= 4.42 & T <= 7.26);
ind3 = find(T >= 7.75 & T <= 11.71);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Left biceps small (ESVI) electrode; Distance between electrodes = 3cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('left_small_3cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.9 & T <= 3.34);
ind2 = find(T >= 4.26 & T <= 7.23);
ind3 = find(T >= 8.36 & T <= 11.09);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Left biceps big (medtronic) electrode; Distance between electrodes = 2cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('left_big_2cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.65 & T <= 3.28);
ind2 = find(T >= 3.96 & T <= 6.59);
ind3 = find(T >= 7.03 & T <= 9.5);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%% Left biceps big (medtronic) electrode; Distance between electrodes = 2.5cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('left_big_2.5cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.67 & T <= 3.03);
ind2 = find(T >= 3.28 & T <= 6.03);
ind3 = find(T >= 7.1 & T <= 9.46);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);


%% Left biceps big (medtronic) electrode; Distance between electrodes = 3cm
clear; close all; clc
fs = 10000; ts = 1/fs; 

data = load('left_big_3cm.mat');
data = cell2mat(struct2cell(data));
N = length(data);  T = 0: ts: (N-1)*ts;
figure(1); plot(T, data); xlabel('Time (seconds)'); ylabel('Voltage (mV)');

ind1 = find(T >= 0.91 & T <= 3.24);
ind2 = find(T >= 4.32 & T <= 7.31);
ind3 = find(T >= 8.09 & T <= 10.78);

curl1 = data(ind1); curl1T = T(ind1);
[RMS_curl1, Mean_amp1, Max_amp1, Mean_freq1, Med_freq1] = EMG_parameters(curl1, curl1T);

curl2 = data(ind2); curl2T = T(ind2);
[RMS_curl2, Mean_amp2, Max_amp2, Mean_freq2, Med_freq2] = EMG_parameters(curl2, curl2T);

curl3 = data(ind3); curl3T = T(ind3);
[RMS_curl3, Mean_amp3, Max_amp3, Mean_freq3, Med_freq3] = EMG_parameters(curl3, curl3T);

%%
