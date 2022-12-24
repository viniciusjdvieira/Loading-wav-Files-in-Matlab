clear all; close all; clc;
% Dr. Vinicius Vieira
% Tips on Matlab-like codes
%--------------------------------------------------
% Loading WAV files #3
% Arbritary files, from a specified path
%--------------------------------------------------
disp('---------------------------------------------------------------------------------');
disp('/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\');
disp('                         LOADING WAV FILES');
disp('                          Arbritary Files');
disp('---------------------------------------------------------------------------------');
disp('--> In this case, any WAV file can be read.');
disp('---------------------------------------------------------------------------------');

files_folder = '.\arbritary-wav-files\';
file_pattern = fullfile(files_folder, '*.wav');
list_files = dir(file_pattern);
how_many_files = length(list_files);

% reading each file:
for i = 1:1:how_many_files

    one_file = list_files(i).name;
    [x,Fs] = audioread([files_folder one_file]);
    Nx=length(x);
    duration = Nx/Fs;
    
    % informations about the file:
    infos = ['File name: %s \nSampling frequency: %4.2f Hz\nDuration: %4.4f s.\n'];
    fprintf(infos, one_file, Fs, duration);
    
end

