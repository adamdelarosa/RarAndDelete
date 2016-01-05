::Name for the rar
SET NAME_OUT="name_of_file_out"
:: Path to runing rar.exe 
SET RAR="C:\Program Files\WinRAR\Rar.exe"
:: Date and time for name prefix
set DATESTAMP=%DATE:~10,4%_%DATE:~4,2%_%DATE:~7,2%
set TIMESTAMP=%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
set DATEANDTIME=%DATESTAMP%_%TIMESTAMP%
:: Path to SAVE RAR file
SET RAROUT="C:\Users\adamd.GINGER-IL\Desktop\test\%NAME_OUT%_%DATEANDTIME%.rar"
:: Path to FILE THAT YOU WANT TO SAVE 
SET FIELS_TO_SAVE="C:\Users\adamd.GINGER-IL\Desktop\test\*.txt"
:: Path to FILES FOR DELETE
SET FIELS_TO_DELETE="C:\Users\adamd.GINGER-IL\Desktop\test"

:: Rar:
%RAR%  a -r  %RAROUT% %FIELS_TO_SAVE%
:: Delete:
del /s %FIELS_TO_SAVE%