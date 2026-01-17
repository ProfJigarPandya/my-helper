subnet=192.168.27
for ip in $(seq 11 58);
do 
	if [ $ip -eq 999 -o $ip -eq 1000 ]
	then
		continue
	fi
	ping -c 1 $subnet.$ip>/dev/null; 
	if [ $? -eq 0 ]
	then
	 echo "$subnet.$ip UP"; 
	else
	 #echo "$subnet.$ip Down"; 
	 echo ""
	fi
done
