%% Signals numbered as in ISO 532-2 Annex B

addpath(genpath('..'))
d = 5;
rise = 0.1;
Fs = 32000;
dBMax = 94;
t = 1:Fs*d;
runs = 5; % runs per noise, take the median instance

%% C.1 Example 1
% check with sone-phon table

disp('C.1 - 1')
f = 1000;

for L = 10:10:80
    s = sin(t/Fs*2*pi*f);
    s = s * 10^((L-dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    Loudness(round(L/10)) = tv2018( '', dBMax, 'ff_32000.mat', [s' s'], Fs );
    audiowrite(['sounds Annex C/C1_1 ' num2str(L) ' dB.wav'] ,s,Fs,'BitsPerSample',24);
end

disp(['Loudness [sone]:       ' num2str(Loudness, '%8.2f')])
disp(['Loudness level [phon]: ' num2str( Sone2PhonTV2015( Loudness ), '%8.1f')])

%% C.1 Example 2

disp('C.1 - 2')
f = 3000;
Loudness = [];

for L = 20:20:80
    s = sin(t/Fs*2*pi*f);
    s = s * 10^((L-dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    Loudness(round(L/20)) = tv2018( '', dBMax, 'ff_32000.mat', [s' s'], Fs );
    audiowrite(['sounds Annex C/C1_2 ' num2str(L) ' dB.wav'] ,s,Fs,'BitsPerSample',24);
end

disp(['Loudness [sone]:       ' num2str(Loudness, '%8.2f')])
disp(['Loudness level [phon]: ' num2str( Sone2PhonTV2015( Loudness ), '%8.1f')])

%% C.1 Example 3

disp('C.1 - 3')
f = 1000;
Loudness = [];

for L = 20:20:80
    s = sin(t/Fs*2*pi*f);
    s = s * 10^((L-dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    z = zeros(size(s));
    Loudness(round(L/20)) = tv2018( '', dBMax, 'ed_32000.mat', [s z], Fs );
    audiowrite(['sounds Annex C/C1_3 ' num2str(L) ' dB.wav'] ,[s z],Fs,'BitsPerSample',24);
end

disp(['Loudness [sone]:       ' num2str(Loudness, '%8.2f')])
disp(['Loudness level [phon]: ' num2str( Sone2PhonTV2015( Loudness ), '%8.1f')])

%% C.1 Example 4

disp('C.1 - 4')
f = 100;
Loudness = [];

L = 50;
s = sin(t/Fs*2*pi*f);
s = s * 10^((L-dBMax)/20);
s = addFallRise(s,Fs,rise,'h');
s = s';
z = zeros(size(s));
Loudness(round(L/50)) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
audiowrite(['sounds Annex C/C1_4 ' num2str(L) ' dB.wav'] ,s,Fs,'BitsPerSample',24);

disp(['Loudness [sone]:       ' num2str(Loudness, '%8.2f')])
disp(['Loudness level [phon]: ' num2str( Sone2PhonTV2015( Loudness ), '%8.1f')])

%% C.2 Example 1

disp('C.2 - 1')
Loudness= [];

for i = 1:runs
    s = rand(1,Fs*d);

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 950, 1050, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,s);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^((60-dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(1,i) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C2_1 100 Hz instance ' num2str(i) '.wav'] ,s,Fs,'BitsPerSample',24);
end

for i=1:runs
    s = rand(1,Fs*d);

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 500, 1500, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,s);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^((70-dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(2,i) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C2_1 1000 Hz instance ' num2str(i) '.wav'] ,s,Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.2 Example 2

disp('C.2 - 2')
Loudness= [];

disp('100-Hz wide noise same as in C.2-1')

for i=1:runs
    s = rand(1,Fs*d);

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 500, 1500, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,s);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^((60-dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(2,i) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C2_2 1000 Hz instance ' num2str(i) '.wav'] ,s,Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.2 Example 3

[ f, L ] = ComponentLevelForTotalNoiseLevel(49.5,15000.5,0,-3,1);
l1000 = L(f>999.5&f<1000.5);

disp('C.2 - 3')
Loudness= [];
pn = audioread('pinknoise_32000_5.wav');
pn = pn';

for l=0:20:40

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 50, 15000, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,pn);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^(( (l-l1000) -dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(round(l/20)+1) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C2_3 ' num2str(l) ' dB.wav'] ,s,Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.2 Example 4

disp('C.2 - 4')
Loudness= [];
pn = audioread('pinknoise_32000_5.wav');
pn = pn';

nLT = 25.5 % number of TO 50 Hz to 16000 Hz, only half for the last
c   = 10*log10(25.5);

for LT=0:10:50

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 44, 16000, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,pn);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^(( (LT+c) -dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(round(LT/10)+1) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C2_4 ' num2str(LT) ' dB.wav'] ,s,Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.2 Example 5

disp('C.2 - 5')
Loudness= [];
pn = audioread('pinknoise_32000_5.wav');
pn = pn';

nLT = 25.5; % 50 Hz to 16000 Hz, only half of the last
c   = 10*log10(25.5);

for LT=0:10:50

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 44, 16000, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,pn);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^(( (LT+c) -dBMax)/20);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    z = zeros(size(s));
    Loudness(round(LT/10)+1) = tv2018( '', dBMax, 'ed_32000.mat', [s z], Fs );
    audiowrite(['sounds Annex C/C2_5 ' num2str(LT) ' dB.wav'] ,[s z],Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.3 Example 1

disp('C.3 - 1')
L = 60;
s1 = sin(t/Fs*2*pi*1500);
s1 = s1 * 10^((L-dBMax)/20);
s2 = sin(t/Fs*2*pi*1600);
s2 = s2 * 10^((L-dBMax)/20);
s3 = sin(t/Fs*2*pi*1700);
s3 = s3 * 10^((L-dBMax)/20);
s=s1+s2+s3;
s = addFallRise(s,Fs,rise,'h');
s = s';
Loudness = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
audiowrite('sounds Annex C/C3_1.wav' ,s,Fs,'BitsPerSample',24);

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.3 Example 2

disp('C.3 - 2')
L = 60;
s1 = sin(t/Fs*2*pi*1000);
s1 = s1 * 10^((L-dBMax)/20);
s2 = sin(t/Fs*2*pi*1600);
s2 = s2 * 10^((L-dBMax)/20);
s3 = sin(t/Fs*2*pi*2400);
s3 = s3 * 10^((L-dBMax)/20);
s=s1+s2+s3;
s = addFallRise(s,Fs,rise,'h');
s = s';
Loudness = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
audiowrite('sounds Annex C/C3_2.wav' ,s,Fs,'BitsPerSample',24);

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% c.3 Example 3

disp('c.3 - 3')
L = 30;
m = zeros(10,d*Fs);
for f = 100:100:1000
    r = rand(1) * 2 * pi;
    s1 = sin(t/Fs*2*pi*f+r);
    s1 = s1 * 10^((L-dBMax)/20);
    m(f/100,:) = s1;
end
s=sum(m);
s = addFallRise(s,Fs,rise,'h');
s = s';
z = zeros(size(s));
Loudness = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
audiowrite('sounds Annex C/C3_3.wav' ,s,Fs,'BitsPerSample',24);

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))


%% c.4 Example 1

disp('c.4 - 1')
Loudness= [];

for i = 1:runs
    s = rand(1,Fs*d);

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 950, 1050, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,s);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^((60-dBMax)/20);
    s = s + 10^((60-dBMax)/20) * sin(t/Fs*2*pi*1000);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(1,i) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C4_1 instance ' num2str(i) '.wav'] ,s,Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))

%% C.4 Example 2

disp('C.4 - 2')
Loudness= [];

for i = 1:runs
    s = rand(1,Fs*d);

    h    = fdesign.bandpass('N,F3dB1,F3dB2', 30, 1450, 1550, Fs);
    bp   = design(h, 'butter');
    s  = filter(bp,s);
    s = s / sqrt(mean(s.^2)) / sqrt(2); % scale to dBMax
    s = s * 10^((60-dBMax)/20);
    s = s + 10^((60-dBMax)/20) * sin(t/Fs*2*pi*1000);
    s = addFallRise(s,Fs,rise,'h');
    s = s';
    Loudness(2,i) = tv2018( '', dBMax, 'ff_32000.mat', [s s], Fs );
    audiowrite(['sounds Annex C/C4_2 instance ' num2str(i) '.wav'] ,s,Fs,'BitsPerSample',24);
end

disp('Loudness [sone]:')
disp( num2str(Loudness, '%8.2f'))
disp('Loudness level [phon]:')
disp(num2str( Sone2PhonTV2015( Loudness ), '%8.1f'))