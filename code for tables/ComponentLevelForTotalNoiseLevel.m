function [ f L ] = ComponentLevelForTotalNoiseLevel(Fl,Fu,TotalLevel,IncreasePerOctave,FrequencySpacing)

% calculate a vector of frequency components, spaced by FrequencySpacing
% for a given noise, expressed by limiting frequencies Fl and Fu, its total
% level and increase of level per octave (e.g. -3 for pink noise)

if nargin < 5
    FrequencySpacing = 1; % one component per Hz
end
if nargin < 4
    IncreasePerOctave = 0; % White noise
end

f = (Fl+0.5*FrequencySpacing):FrequencySpacing:Fu;

%take 1000 kHz component as reference and give an estimation based for its level based on white noise (rough method to avoid floating point errors)
ReferenceIndex = round( (( 1000 - Fl )/FrequencySpacing ) / FrequencySpacing );
if ( ReferenceIndex < 1 ) ReferenceIndex = 1; else
    if ( ReferenceIndex > length(f) ) ReferenceIndex = length(f); end
end
ReferenceF = f(ReferenceIndex);

L = TotalLevel - 10 * log( ( Fu - Fl ) / FrequencySpacing ) / log(10) + ( log( f ./ReferenceF ) ./ log(2) ) * IncreasePerOctave;

% Correct levels so that total power is correct
Power = sum( 10.^(L./10) );
PowerFactor = 10^(TotalLevel/10) / Power;
L = L + 10 * log( PowerFactor ) / log(10);

% semilogx(f,L);