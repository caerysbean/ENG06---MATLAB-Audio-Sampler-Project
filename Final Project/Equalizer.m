  
function y = Equalizer(x, fs, gains)

    N = length(x);
    X = fft(x);
    f = (0:N-1) * (fs/N);
    bands = [0 63 126 502 1000 fs/2];
    gainLinear = 10.^(gains/20);

    for i = 1:5
        % Apply to positive frequencies
        idx = f >= bands(i) & f < bands(i+1);
        X(idx) = X(idx) * gainLinear(i);

        % Apply to matching negative frequencies (upper half of FFT)
        idxNeg = f >= (fs - bands(i+1)) & f < (fs - bands(i));
        X(idxNeg) = X(idxNeg) * gainLinear(i);
    end

    y = real(ifft(X));

end
