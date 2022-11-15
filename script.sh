host="${1:-`hostname`}"
date=$(date +"%d-%m-%Y")
curl https://raw.githubusercontent.com/GreatMedivack/files/master/list.out | grep Running | cut -f1 -d' ' > /tmp/$host'_'$date'_'running.out
tar -cf /tmp/$host'_'$date.tar /tmp/$host'_'$date'_'running.out
mkdir /tmp/archives
mv /tmp/$host'_'$date.tar /tmp/archives
tar -tf /tmp/archives/$host'_'$date.tar
