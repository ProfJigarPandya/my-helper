subnet=192.168.29
rootpass=test
for ip in $(seq 11 40);
do 
	if [ $ip -eq 254-o $ip -eq 255 ]
	then
		continue
	fi
	ping -c 1 $subnet.$ip>/dev/null; 
	if [ $? -eq 0 ]
	then
	 echo "$subnet.$ip UP"; 
	 sshpass -p $rootpass ssh -o "StrictHostKeyChecking no" root@$subnet.$ip "shutdown -h now ; exit;"
	else
	 echo "$subnet.$ip Down"; 
	fi
done
