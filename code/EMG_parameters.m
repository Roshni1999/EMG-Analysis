function [RMS_curl, Mean_amp, Max_amp, Mean_freq, Med_freq] = EMG_parameters(curl, curl_time)

fs = 10000;  %Sampling rate

[b, a] = butter(2,[5/(fs/2) 500/(fs/2)],'bandpass'); %EMG: 5- 500Hz
filtered_curl = filtfilt(b,a, curl);                 %filtered signal

figure(2)
plot(curl_time, filtered_curl); xlabel('Time (seconds)'); ylabel('Voltage (mV)');
title('Filtered Curl')

RMS_curl = sqrt(mean(filtered_curl.^ 2));         %RMS of amplitude

%% Power spectrum
[P,f] = pspectrum(filtered_curl,fs);
figure(3)
plot(f,pow2db(P)); xlabel("Frequency"); ylabel('Power spectrum [dB]');
title('Power spectrum');

%% Mean and max amplitude
Rec_filtered_curl = abs(filtered_curl);
Moving_avg_curl = movmean(Rec_filtered_curl,100,1);
Mean_amp = mean(Moving_avg_curl);
Max_amp = max(Moving_avg_curl);

%%  Mean and Median Frequency
figure(4); 
Y = fft(filtered_curl);
P2 = abs(Y); 
P1 = P2(1:length(Y)/2+1); 
f = fs*(0:(length(Y)/2))/length(Y);
Mean_freq = meanfreq(filtered_curl,fs);
Med_freq = medfreq(filtered_curl,fs);
plot(f,P1); xline(Mean_freq,'-r', LineWidth=2);  xline(Med_freq,'-g', LineWidth=2);
xlabel("Frequency [Hz]"); ylabel('Amplitude'); xlim([0 700]);
legend('EMG signal', 'Mean frequency', 'Median Frequency')

end
