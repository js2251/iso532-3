% Code used to generate Table 5, conversion from sone to phon

addpath(genpath('..'))

d     = 5; % duration of signal in s. includes rise and fall time
rise  = 0.1; % rise and fall time in 
Fs    = 32000; % sampling rate

L = [0 2.2 4 5 7.5 10:5:120];

for i = 1:length(L)
    t = 1:d*Fs;
    s = sin(t/Fs*2*pi*1000);         % full-scale sinusoid
    s = addFallRise(s',Fs,rise,'h');
    Loudness = tv2018( '', L(i), 'ff_32000.mat', s, Fs );
    disp([num2str(Loudness) ' sone = ' num2str(L(i)) ' phon'])
end