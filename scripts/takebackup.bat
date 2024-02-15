@echo off
rem you could also remove the line above, because it might help you to see what happens

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
 
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set _foldername=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%

rem /i option is needed to avoid the batch file asking you whether destination folder is a file or a folder
rem /e option is needed to copy also all folders and subfolders
xcopy "C:\Websites\CoreApplication" "C:\Website backup\Application Backup\%_foldername%"  /i /e /y
copy "C:\Websites\CoreApplication\*.config" "C:\Website backup\Config Backup"
copy "C:\Websites\CoreApplication\*.json" "C:\Website backup\Config Backup"
