# Loading .wav Files in Matlab

This repository brings three tips on loading .wav files in **Matlab**. 


## Tip #1

In this case, you are interested in asking the user to put the file name. 
- Access the **loading1.m** file.
In this example, files must to be in the same directory of the **.m** code.

## Tip #2

In this case, you are interested in loading a sequence of files with a specific prefix word.  
- Access the **loading2.m** file.
In this example, by accessing the **.m** code, you can choose whether you or the user put the file name and the index numbers.

## Tip #3

In this case, you are interested in loading any **.wav** file from a folder. 
- Access the **loading3.m** file.



# Repository Notes

All **.wav** files in this repository are just examples of usage. You can apply your own files.

If you want to use the second tip, please pay attention in the files name pattern: 
- They must to be "prefix-word" + "index-number" + ".wav"

Pay attention if your Matlab version has the **audioread** function.
