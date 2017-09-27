get_y_n(){
	while true
	do
		read value
		value=$(echo $value | tr '[:upper:]' '[:lower:]')
		if [[ $value == "yes" || $value == "y" ]]
		then
			return 1
			break
		elif [[ $value == "no" || $value == "n" ]]
		then
			return 0
			break
		else
			echo -n "please enter a valid value:"
		fi
	done
}
cd(){
	dir_flag=true
	if [[ $# -eq 0 ]]
	then
		folder=~
	else
		folder=$(echo $@ | sed -e "s| |\\ |g")
	fi
	if ! [[ -e $folder ]]
	then
		dir_flag=false
		echo -n "There is no such a directory do you want to create? [y/n]:"
		get_y_n
		if [[ $status -eq 1 ]]
		then
			mkdir -p $folder 
			dir_flag=true
		fi

	fi
	if [[ $dir_flag == true ]]
	then
		builtin cd $folder
        if [[ $(ls -1 | wc -l) -lt 50 ]]
        then
            ls -1
        fi
	fi

}
