addpath(genpath('..'))
[FileList, FileListLength] = getAllFilesFromDirectory( 'sounds Annex B', 'wav' )

for i = 1:FileListLength
    filename_full = char(FileList(i).name);
    disp(filename_full)
    filename_full = char(FileList(i).name);
    [s, Fs] = audioread( filename_full );
    if ( Fs > 32000 )
        %h    = fdesign.bandpass('N,F3dB', 6, 32000/Fs);
        %lp   = design(h, 'butter');
        %s  = filter(lp,s);
        
        % use Matlab's anti-aliasing filter that is built into resample()
    end
   s = resample( s, 32000, Fs ); % does anti-aliasing
   audiowrite(filename_full,s,Fs,'BitsPerSample',24);
    
end

for i = 1:FileListLength
    filename_full = char(FileList(i).name);
    [pathstr,filename,ext] = fileparts( filename_full);
    disp(filename)
    [Loudness, ShortTermLoudness, LongTermLoudness] = tv2018( filename_full, 100, 'ff_32000.mat' );
    disp(max(LongTermLoudness))
end

% generate signal 1
Fs = 32000;
t  = 1:Fs*5;
s  = 10^((94-100)/20) * sin(t/Fs*2*pi*1000);
s  = addFallRise(s,Fs,0.1,'h');
audiowrite('sounds Annex B/Testsignal1_1000Hz94dB.wav');
[Loudness, ShortTermLoudness, LongTermLoudness] = tv2018( filename_full, 100, 'ff_32000.mat' );
disp(max(LongTermLoudness))

