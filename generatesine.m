%Sampling Frequency, using the Nyquist Theorem and accounting for effects
%of DAC low pass filter
fs = 44100;
afreq = 261.63; %C4 sample
t = 0:1/fs:5; % Time vector for 5 second duration
sine = (sin(2*pi*afreq*t))'; %Given as a column vector
% Play the generated sine wave sound
sineSample = audioplayer(sine, fs);
play(sineSample)