function [sineSample, sineWave, t] = generateSine(afreq)

%Sampling Frequency, using the Nyquist Theorem and accounting for effects
%of DAC low pass filter
fs = 44100;
%afreq = 261.63; %C4 sample
t = 0:1/fs:0.5; % Time vector for 5 second duration
sineWave = (sin(2*pi*afreq*t))'; %Given as a column vector
% Play the generated sine wave sound
sineSample = audioplayer(sineWave, fs);
%play(sineSample) - implement this in the GUI callback

end 
