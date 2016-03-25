REM !!! Replace the value below with the path to the directory there
REM application under test (AUT) is located.


REM SET AUT=C:\absolute\path\to\your\application\directory
REM SET AUT=C:\eclipse\osate2-2.1.2-win32.win32.x86_64
set AUT=%~dp0%osate2-core\org.osate.build.product\target\products\osate2\win32\win32\x86_64

REM set AUT_WKSPC=C:\Users\prmarti1\smaccm\rcptt_ci.dev\osate2_workspace
set AUT_WKSPC=%~dp0%osate2_workspace

REM SET RUNNER=%USERPROFILE%\runner
REM RUNNER=C:\eclipse\rcptt.runner-2.0.1\eclipse
set RUNNER=%1

REM SET PROJECT=.
SET PROJECT=.\regressionSuite\rcpttSuite

REM SET AUT_WS=.\osate2_workspace

REM Path to directory with test results, default is C:\Users\User\results
SET RESULTS=%PROJECT%\..\results

REM Remove results dir if present
IF NOT EXIST %RESULTS% GOTO NORESULTS
RMDIR /S /Q %RESULTS%

:NORESULTS
md %RESULTS%

java -jar %RUNNER%/plugins/org.eclipse.equinox.launcher_1.3.100.v20150511-1540.jar ^
 -application org.eclipse.rcptt.runner.headless ^
 -data %RESULTS%/runner-workspace/ ^
 -aut %AUT% ^
 -autWsPrefix %AUT_WKSPC% ^
 -autConsolePrefix %RESULTS%/aut-output ^
 -htmlReport %RESULTS%/report.html ^
 -junitReport %RESULTS%/report.xml ^
 -import %PROJECT% ^
 -reuseExistingWorkspace ^
 -testOptions "testExecTimeout=3600"
 
REM java -jar %RUNNER%/plugins/org.eclipse.equinox.launcher_1.3.100.v20150511-1540.jar ^
REM  -application org.eclipse.rcptt.runner.headless ^
REM  -data %RESULTS%/runner-workspace/ ^
REM  -aut %AUT% ^
REM  -autWsPrefix %RESULTS%/aut-workspace ^
REM  -autConsolePrefix %RESULTS%/aut-output ^
REM  -htmlReport %RESULTS%/report.html ^
REM  -junitReport %RESULTS%/report.xml ^
REM  -import %PROJECT%