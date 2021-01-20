format compact
warning off;

wiener_as
snrlist = {'-5','0','5','10','15'};
%snrlist = {'0','5'};
ROOT = [pwd filesep];
NOISY_ROOT = [pwd filesep 'mul_noisy' filesep];
ENH_ROOT = [pwd filesep 'mul_enh' filesep]

for snr = 1:length(snrlist)
    tmp_dir = snrlist{snr};
    mkdir([ENH_ROOT tmp_dir]);
    noisy_dir = [NOISY_ROOT tmp_dir filesep];
    cd(noisy_dir)
    files = dir('*.wav');
    L = length(files);
    for i = 1:L
        file_name = files(i).name;
        file_name_raw = [noisy_dir file_name];
        wiener_as(file_name_raw,[ENH_ROOT tmp_dir filesep file_name(1:end-4) '.enh.wav']);
    end
    cd('../../')
end


    
