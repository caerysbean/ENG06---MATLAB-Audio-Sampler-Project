function [amSample, amSignal, t] = generateAM(afreq)
    fs = 44100;
    fc = 2000;          %carrier frequency
    t = (0:1/fs:0.5)';     % 0.5 second duration, column vector
    %afreq = 220.63;
    % 1. Create the actual message signal (the tone)
   modulatingSignal = cos(2*pi*afreq*t); 
    
    % 2. Perform Amplitude Modulation
    % Usage: ammod(messageSignal, carrierFreq, samplingFreq)
    amSignal = ammod(modulatingSignal, fc, fs);
    
    % 3. Create the audio player object
    amSample = audioplayer(amSignal, fs);
    
    play(amSample) 
end