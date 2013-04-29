@ECHO OFF

@REM WARNING: This file is created by the Configuration Wizard.
@REM Any changes to this script may be lost when adding extensions to this configuration.

SETLOCAL

@REM *************************************************************************
@REM This script is used to stop WebLogic Server created by Config Wizard
@REM Usage: stopWebLogic [username] [password] [server-name] [admin-url]
@REM The default value of server-name is myserver
@REM The default value of admin-url is t3:\\localhost:7001
@REM For additional information, refer to the WebLogic Server Administration
@REM Console Online Help(http:\\e-docs.bea.com\wls\docs81\ConsoleHelp\startstop.html)
@REM *************************************************************************

if NOT "%1"=="" (
	set UIDPWD=-username %1
	shift
)

if NOT "%1"=="" (
	set UIDPWD=%UIDPWD% -password %1
	shift
)

if ""=="true" (
	if "%UIDPWD%"=="" (
		echo ERROR: Because your domain was created as a production mode domain. 
		echo You MUST include a username parameter that can be used to shutdown Weblogic Server
		pause
		GOTO :EOF
	)
)

@REM set server name

set SERVER_NAME=myserver

if NOT "%1"=="" (
	set SERVER_NAME=%1
	shift
)

if "%SERVER_NAME%"=="" (
	echo ERROR: Missing Server Name. 
	echo Usage: stopWebLogic.cmd^(sh^) [username] [password] [server-name] [admin-url]
	pause
	GOTO :EOF
)

@REM set ADMIN_URL

if NOT "%1"=="" (
	set ADMIN_URL=%1
	shift
) else (
	if "%ADMIN_URL%"=="" (
		set ADMIN_URL=t3://localhost:7001
	)
)

@REM Call commEnv here.

call "C:\bea\weblogic81\common\bin\commEnv.cmd"

echo Stopping Weblogic Server...

%JAVA_HOME%\bin\java -cp %WEBLOGIC_CLASSPATH% weblogic.Admin FORCESHUTDOWN -url %ADMIN_URL% %UIDPWD% %SERVER_NAME%  2>&1 

echo Done



ENDLOCAL