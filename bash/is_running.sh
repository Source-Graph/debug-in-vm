is_running(){
	state=$(virsh domstate Ubuntu)

	if [ ! $state == "running" ];then
		echo Start the vm before running this project.
		exit
	fi
}

is_running
