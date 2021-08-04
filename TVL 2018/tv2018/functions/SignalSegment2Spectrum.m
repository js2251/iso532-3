function [fLeftRelevant, LLeftRelevant, fRightRelevant, LRightRelevant] = SignalSegment2Spectrum(s, Fs, dBMax, wHann, vLimitingIndizes)

% calculate the spectrum for a segment of 2048x2 samples
% returns relevant components, i.e. components that have at least -30 dB
% SPL and at least 60 dB less than the maximum component, 4 vectors are
% returned: frequency and level for the left ear, and same for the right ear
% dBMax is the rms level of a full scale sinusoid
% hann windows and limiting indizes for the 6 FFTs are passed so they are
% calculated only once
% much is done with intensity rather than level so that nonzeros() works
% correctly without the need of excemptions

npts            = Fs / 1000 * 64;                     % points for FFT, 2048
f               = Fs*(0:(npts/2))/npts;               % frequency scale for fft
% dHannCorrection    = 1 / ( sum(hann(npts).^2)/npts );  % correction factor of intensity for hann window
dHannCorrection = 10^(3.32/10);                       % actual filter correction

%% window the signal
ws = zeros(npts,6,2);
for i = 1:6
    for j = 1:2
        ws(:,i,j) = s(:,j) .* wHann(:,i);
    end
end

%% fft (6 ffts and combination)
ICombinedFft = zeros(length(f),2);
for i = 1:6
    for j = 1:2
        Y = fft( ws(:,i,j)  );
        S = abs(Y/npts);
        S = S(1:npts/2+1);
        S(2:end-1) = 2*S(2:end-1);  % amplitudes of sine components
        I = S .^2;                  % intensity of components
        I = I * dHannCorrection;
        I = I * 2^(i-1);            % correction for window length
        ICombinedFft( vLimitingIndizes(i):( vLimitingIndizes(i+1) ), j ) = I( vLimitingIndizes(i):( vLimitingIndizes(i+1) ) ) * 10^(dBMax/10) ;
    end        
end

%% take only components which are higher than max component level minus 60dB and higher than -30 dB SPL
dMaxI = max(max(ICombinedFft));
if ( dMaxI < 1000 ) % discard components < -30 dB SPL in any case by setting virtual max component of 30 dB if max is smaller than that
    dMaxI = 1000;       
end
mIndizesOfRelevantL = ICombinedFft > ( dMaxI / 10^6 );    % only components at least
fnoDC= f(2:end);                                          % discard DC component
mIndizesOfRelevantL = mIndizesOfRelevantL(2:end,:);       
ICombinedFft = ICombinedFft(2:end,:);                     

ILeftRelevant  = ICombinedFft(:,1) .* mIndizesOfRelevantL(:,1);
IRightRelevant = ICombinedFft(:,2) .* mIndizesOfRelevantL(:,2);
fLeftRelevant  = fnoDC(:) .* mIndizesOfRelevantL(:,1);
fRightRelevant = fnoDC(:) .* mIndizesOfRelevantL(:,2);

LLeftRelevant = 10*log10( nonzeros( ILeftRelevant ) );
LRightRelevant = 10*log10( nonzeros( IRightRelevant ) );
fLeftRelevant = nonzeros( fLeftRelevant );
fRightRelevant = nonzeros( fRightRelevant );