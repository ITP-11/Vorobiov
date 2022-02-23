@ECHO OFF

IF -%1==- GOTO NoFileName
IF -%2==- GOTO NoFileName
IF NOT EXIST %1 GOTO NoFile
IF NOT EXIST %2 GOTO NoFile

FOR /F %%i IN (%2) DO COPY %1 %%i 
GOTO :EOF

:NoFileName
ECHO You haven't declared all the parametres!
GOTO :EOF

:NoFile
ECHO There is no such file!
GOTO :EOF
