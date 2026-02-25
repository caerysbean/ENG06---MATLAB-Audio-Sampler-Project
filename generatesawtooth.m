%Sampling Frequency, using the Nyquist Theorem and accounting for effects
%of DAC low pass filter
%Using Signal Processing Toolbox for sawtooth
fs = 44100;
afreq = 261.63; %C4 sample
t = 0:1/fs:5; % Time vector for 5 second duration
sawtoothFunction = (sawtooth(2*pi*afreq*t))'; %Given as a column vector
% Play the generated sine wave sound
sawtoothSample = audioplayer(sawtoothFunction, fs);
play(sawtoothSample)