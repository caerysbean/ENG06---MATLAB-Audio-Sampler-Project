function out = PlaybackSpeed(signal, speed)

if speed <= 0
    speed = 1;
end

% Time stretch using interpolation
x = 1:length(signal);

xq = linspace(1,length(signal), round(length(signal)/speed));

out = interp1(x, signal, xq, 'linear');

out = out(:); % force column vector

end