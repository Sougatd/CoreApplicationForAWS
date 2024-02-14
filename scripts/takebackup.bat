@echo off
rem you could also remove the line above, because it might help you to see what happens

set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
 
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%

set _foldername="%date:~6,4%%date:~0,2%%date:~3,2%-%CUR_HH%%CUR_NN%%CUR_SS%"

rem /i option is needed to avoid the batch file asking you whether destination folder is a file or a folder
rem /e option is needed to copy also all folders and subfolders
xcopy "C:\Websites\CoreApplication" "C:\Website backup\%_foldername%"  /i /e /y
