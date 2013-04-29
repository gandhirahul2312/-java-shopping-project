#!/bin/sh

# WARNING: This file is created by the Configuration Wizard.
# Any changes to this script may be lost when adding extensions to this configuration.

# *************************************************************************
# This script is used to stop WebLogic Server created by Config Wizard
# Usage: stopWebLogic [username] [password] [server-name] [admin-url]
# The default value of server-name is myserver
# The default value of admin-url is t3://localhost:7001
# For additional information, refer to the WebLogic Server Administration
# Console Online Help(http://e-docs.bea.com/wls/docs81/ConsoleHelp/startstop.html)
# *************************************************************************

if [ "$1" != "" ] ; then
	UIDPWD="-username $1"
	shift
fi

if [ "$1" != "" ] ; then
	UIDPWD="${UIDPWD} -password $1"
	shift
fi

if [ "" = "true" ] ; then
	if [ "${UIDPWD}" = "" ] ; then
		echo "ERROR: Because your domain was created as a production mode domain. "
		echo "You MUST include a username parameter that can be used to shutdown Weblogic Server"
		read _val
		exit
	fi
fi

# set server name

SERVER_NAME="myserver"

if [ "$1" != "" ] ; then
	SERVER_NAME="$1"
	shift
fi

if [ "${SERVER_NAME}" = "" ] ; then
	echo "ERROR: Missing Server Name. "
	echo "Usage: stopWebLogic.cmd(sh) [username] [password] [server-name] [admin-url]"
	read _val
	exit
fi

# set ADMIN_URL

if [ "$1" != "" ] ; then
	ADMIN_URL="$1"
	shift
else
	if [ "${ADMIN_URL}" = "" ] ; then
		ADMIN_URL="t3://localhost:7001"
	fi
fi

# Call commEnv here.

. C:/bea/weblogic81/common/bin/commEnv.sh

echo "Stopping Weblogic Server..."

${JAVA_HOME}/bin/java -cp ${WEBLOGIC_CLASSPATH} weblogic.Admin FORCESHUTDOWN -url ${ADMIN_URL} ${UIDPWD} ${SERVER_NAME}  2>&1 

echo "Done"

