@echo off
for /f "tokens=1,2,3,5,6 usebackq delims=:/ " %%a in ('%date% %time%') do set TimeStamp=%%c-%%a-%%b_%%d%%e

echo %TimeStamp%

md "C:\some\backup\folder\LEAGUENAME\New"
copy export\LEAGUENAME\* "C:\some\backup\folder\LEAGUENAME\New"

md "C:\some\backup\folder\LEAGUENAME\NewImports"
copy import\LEAGUENAME\* "C:\some\backup\folder\LEAGUENAME\NewImports"

CScript zip.vbs "C:\some\backup\folder\LEAGUENAME\New" "C:\some\backup\folder\LEAGUENAME\New.zip"

CScript zip.vbs "C:\some\backup\folder\LEAGUENAME\NewImports" "C:\some\backup\folder\LEAGUENAME\NewImports.zip"

cd "C:\some\backup\folder\LEAGUENAME"
rename New.zip "LEAGUENAME-sim-%TimeStamp%.zip"
rename NewImports.zip "LEAGUENAME-imports-%TimeStamp%.zip"

rd /q/s New
rd /q/s NewImports