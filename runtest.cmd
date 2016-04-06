REM - Input Argument 1: Path to the Headless RCPTT application.
REM - Typically something like:
REM - C:\eclipse\rcptt.runner-2.0.1\eclipse


REM - This is the Application Under Test (i.e. what we just built)
set AUT=%~dp0%osate2-core\org.osate.build.product\target\products\osate2\win32\win32\x86_64

REM - This is the workspace that we want our Osate build to use. This should
REM - have been included with the rcptt_ci project.
set AUT_WKSPC=%~dp0%osate2_workspace

REM - The path to the Headless RCPTT Runner. This is the argument to this script
set RUNNER=%1

REM SET PROJECT=.
SET PROJECT=.\regressionSuite\rcpttSuite


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
 