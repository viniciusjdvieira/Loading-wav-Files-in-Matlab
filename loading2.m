clear all; close all; clc;
% Dr. Vinicius Vieira
% Tips on Matlab-like codes
%--------------------------------------------------
% Loading WAV files #2
% Files in sequence, from a specified path
%--------------------------------------------------
disp('---------------------------------------------------------------------------------');
disp('/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\');
disp('                         LOADING WAV FILES');
disp('                         Files in sequence');
disp('---------------------------------------------------------------------------------');
disp('--> In this case, files have the same prefix word.');
disp('--> The suffix word is the file index number.')
disp('---------------------------------------------------------------------------------');


% use one of the options below (uncomment as you wish)

%% 1) If yopu want to expect the user to put the number of files and tjeh prefix word, use this:
% val_fst = input('Input the index of the first signal in the list: ');
% val_lst = input('Input the index of the last signal in the list: ');
% filename = input('Input the prefix word of the file name: ','s');

%% 2) If you want to specify the number of files in the code, use this:
val_fst = 1;
val_lst = 10;
filename = 'ang';

%% Sequence 
for ind = val_fst:1:val_lst
    str=['.\sequenced-wav-files\' filename mat2str(ind) '.wav']; % files' path
    [x,Fs] = audioread(str);
    Nx=length(x);
    duration = Nx/Fs;
    
    % informations about the file:
    infos = ['File name: %s \nSampling frequency: %4.2f Hz\nDuration: %4.4f s.\n'];
    fprintf(infos, [filename mat2str(ind) '.wav'], Fs, duration);

end
