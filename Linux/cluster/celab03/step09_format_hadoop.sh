labsubnet=192.168.27
passw=tset
i=11
sshpass -p $passw ssh hadoop@$labsubnet.$i "/opt/hadoop/bin/hadoop namenode -format" 
