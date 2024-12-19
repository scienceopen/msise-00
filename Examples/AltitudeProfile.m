% geographic WGS84 lat,lon,alt
glat = 65.1;
glon = -147.5;

gi = struct;
gi.f107s = 150;
gi.f107 = 150;
gi.Ap = 4;

alt_km = 50:20:1000;
time = datetime(2015,12,13,10,0,0);

cwd = fileparts(mfilename('fullpath'));
addpath(fullfile(cwd, '..'));

for i = 1:length(alt_km)
  atmos(i) = msise00.msise00(time, glat, glon, gi, alt_km(i)); %#ok<SAGROW>
end

msise00.plotalt(atmos, time, glat, glon);
