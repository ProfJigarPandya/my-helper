for rn in {"./my-content/","./my-contribution/","./my-datasets/","./my-dev/","./my-helper/","./my-versioncontrol/","./my-assignments/"}
do
	echo $rn;
	cd $rn
	git pull
	cd ..
done;
