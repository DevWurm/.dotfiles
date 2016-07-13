if [ -n "$SUDO_USER" ]
then
	USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
else
	USER_HOME=$HOME
fi
echo $USER_HOME
