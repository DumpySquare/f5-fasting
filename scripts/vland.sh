# #!/bin/bash


# time=`date +%Y%m%d_%H%M`
# unit=`echo "$HOSTNAME" | awk -F '.' '{print $1}'`



#!/bin/bash
#facility="$(uname -n)"
#echo ${facility}

#HOSTNAME="$(uname -n)"
#echo ${HOSTNAME}

HOSTNAME=`tmsh list sys global-settings hostname|grep hostname|awk '{print $2}'`
TIMESTAMP=`date`

sleep 2

echo "Hostname is $HOSTNAME"
echo "Time Stamp is $TIMESTAMP"

echo "Performing UCS backup"
tmsh save sys ucs /var/tmp/backup_${HOSTNAME}_`date +%Y%m%d-%H%M%S`.ucs

sleep 40

echo "Performing Pre-Upgrade Log File Backup"
nice -n 19 qkview -s0

sleep 20

echo "done"
