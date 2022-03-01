@ECHO OFF

IF -%1==- GOTO NoParemetres
IF -%2==- GOTO NoParemetres
IF -%3==- GOTO NoParemetres
IF NOT EXIST %2\*.%1 GOTO NoSuchExtension
IF NOT EXIST %2 GOTO NoFolder
IF NOT EXIST %3\BackUp GOTO NoFolder

COPY %2\*.%1 %3\BackUp
ECHO The files are successfully copied!
GOTO :EOF

:NoParemetres
ECHO You haven't declared all the parametres!
GOTO :EOF

:NoFolder
ECHO There is no such folder!
GOTO :EOF

:NoSuchExtension
ECHO There are no files with such extension!
GOTO :EOF
