clear all; close all; clc;
% Dr. Vinicius Vieira
% Tips on Matlab-like codes
%--------------------------------------------------
% Loading WAV files #1
% User needs to say the file name
%--------------------------------------------------
disp('---------------------------------------------------------------------------------');
disp('/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\');
disp('                         LOADING WAV FILES');
disp('                  User needs to say the file name');
disp('---------------------------------------------------------------------------------');

file_name = input('Input the file name: ', 's'); % File in the same directory
[x,Fs] = audioread(file_name);
duration = length(x)/Fs;

% informations about the file:
infos = ['File name: %s \nSampling frequency: %4.2f Hz\nDuration: %4.4f s.\n'];
fprintf(infos, file_name, Fs, duration);    