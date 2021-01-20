%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   wiener filter speech enhancement for pilot900_english
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;
format compact
warning off;

wiener_as

dataset0_noisy_dir = ['/home/lisen/uestc/Research/Dataset/pilot900_Processed_seen_clean_noisy/dataset4'];
dataset0_enh_dir = ['/home/lisen/uestc/Research/Dataset/pilot900_Processed_seen_clean_noisy_enh/dataset4'];
mkdir(dataset0_enh_dir);
files = dir(dataset0_noisy_dir);
dirFlags = [files.isdir];
subFolders = files(dirFlags);

error_list = '  '; %files in sub_folder may have some error, for example text and speech don't match
for k = 3:length(subFolders) 
    length_files = length(subFolders);
%     fprintf('Sub folder #%d = %s \n', k, subFolders(k).name);
%     fprintf('%s \n',  subFolders(k).name);
    src_sub_dir = [dataset0_noisy_dir filesep subFolders(k).name]; % source floder contain only one *.wav and only only one *.txt
%     fprintf('%s\n',src_sub_dir)
    target_sub_dir = [dataset0_enh_dir filesep subFolders(k).name]; % target sub dirs_path
%     fprintf('%s\n', target_sub_dir);
    
    src_wav_file_name = fullfile(src_sub_dir, [src_sub_dir(end-4:end) '.wav']);
    src_txt_file_name = fullfile(src_sub_dir, [src_sub_dir(end-4:end) '.txt']);
    enh_wav_file_name = fullfile(target_sub_dir, [target_sub_dir(end-4:end) '.wav']);
    enh_txt_file_name = fullfile(target_sub_dir, [target_sub_dir(end-4:end) '.txt']);
    
    mkdir(target_sub_dir); 
    
    try
        wiener_as(src_wav_file_name,enh_wav_file_name);
        copyfile(src_txt_file_name, enh_txt_file_name)
        fprintf('%.f%%  \n', 100*((k-2)/length_files));
    catch
%         fprintf('error path:  %s  \n', enh_wav_file_name);
        error_list = strcat(error_list,'--------------------',enh_wav_file_name);
        rmdir(target_sub_dir,'s');
    end
end
fprintf('error_list:\n')
fprintf('%s  ', error_list);
