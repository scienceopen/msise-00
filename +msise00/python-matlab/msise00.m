%% MSISE00 call MSISE-00 model
% https://www.scivision.dev/matlab-python-user-module-import/

function atmos = msise00(time, alt_km, glat, glon)
arguments
  time (1,1) datetime
  alt_km (1,:) {mustBePositive}
  glat (1,1)
  glon (1,1)
end

atmos = py.msise00.run(time, alt_km, glat, glon);

end
