function [out Fs] = ReadAndResample( filename )

[s, Fs] = audioread( filename ); % replace with wavread for older versions of Matlab

if ( Fs == 32000 )
    out = s;
else
    out = resample( s, 32000, Fs );
    Fs  = 32000;
end
