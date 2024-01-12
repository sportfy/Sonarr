@REM SET SONARR_MAJOR_VERSION=4
@REM SET SONARR_VERSION=4.0.0.5
@REM SET BRANCH=develop
@REM SET FRAMEWORK=net6.0
@REM SET RUNTIME=win-x64
echo ##teamcity[progressStart 'Building setup file']
echo inno\ISCC.exe sonarr.iss
cd /d distribution\windows\setup\output
echo ##teamcity[publishArtifacts 'distribution\windows\setup\output\*%RUNTIME%*.exe' > build.bat
cd /d ..\..\..\
echo ##teamcity[progressFinish 'Building setup file']

echo ##teamcity[publishArtifacts 'distribution\windows\setup\output\*%RUNTIME%*.exe']
