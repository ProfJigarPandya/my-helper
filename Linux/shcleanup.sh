subnet=192.168.29
for ip in $(seq 1 254);
do 
	if [ $ip -eq 103 -o $ip -eq 104 -o $ip -eq 101 -o $ip -eq 102 -o $ip -eq 1 ]
	then
		continue
	fi
	ping -c 1 $subnet.$ip>/dev/null; 
	if [ $? -eq 0 ]
	then
	 echo "$subnet.$ip UP"; 
	 sshpass -p root ssh -o "StrictHostKeyChecking no" root@$subnet.$ip "shutdown -h now ; exit;"
	 #sshpass -p user1 ssh -o "StrictHostKeyChecking no" user1@$subnet.$ip "find /home/user1 -name \"*.sh\" -exec rm -rf {} \;;cat /dev/null > /home/user1/deletepath.txt;exit;"
#	 sshpass -p user1 ssh -o "StrictHostKeyChecking no" user1@$subnet.$ip "find /home/user1 -type f -exec file {} \; | grep \"shell script\" | cut -d\":\" -f1 > /home/user1/deletepath.txt ; for line in \`cat /home/user1/deletepath.txt\`; do rm -rf $line; done; exit"
	else
	 echo "$subnet.$ip Down"; 
	fi
done
