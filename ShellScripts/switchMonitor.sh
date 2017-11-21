if [ $# -lt 2 ];then
		echo "$0 <Device> <Channel>"
		exit 0
	fi
DEV=$1
CHANNEL=$2
echo "trying to change mode to Monitor $DEV .."
echo "trying to change channel to $CHANNEL"

ifconfig "$DEV" down
iwconfig "$DEV" mode monitor 
iwconfig "$DEV" channel "$2"
ifconfig "$DEV" up

echo "Change Success!"
