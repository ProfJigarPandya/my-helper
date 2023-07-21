echo "Usage: mycmdname numberofterminals"
#echo -e 'Enter Password:\c'
#read -s password
subnet=192.168.26
username=hadoop
password=hadoop0702
if [ -z $1 ]
then
	set 1 1
fi

for ((i=$1;i<=$2;i++))
{
	gnome-terminal --tab -e "sshpass -p $password ssh -o StrictHostKeyChecking=no $username@$subnet.$i"
}

exit;
