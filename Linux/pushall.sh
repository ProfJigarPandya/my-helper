for rn in {"./my-content/","./my-contribution/","./my-datasets/","./my-dev/"}
do
	echo $rn;
	cd $rn
	git push
	cd ..
done;
