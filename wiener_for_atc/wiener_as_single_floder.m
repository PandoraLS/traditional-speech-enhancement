format compact
warning off;
% use wiener_as.m to enhance noisy *.wav files in a single folder
wiener_as; % import wiener_as.m 

NOISY_ROOT = [pwd filesep];
% fprintf(1,'%s\n',NOISY_ROOT);
ENH_ROOT = [pwd filesep 'enh'];
raw_list = [NOISY_ROOT 'raw' filesep];
cd(raw_list)
files = dir('*.wav');
L = length(files)
for i = 1:L
    file_name = files(i).name;
    file_name_raw = [raw_list file_name]
    %fprintf(1,'%s\n',file_name)
    wiener_as(file_name_raw,[ENH_ROOT filesep file_name(1:end-4) '.enh.wav']);
end
cd('../')
