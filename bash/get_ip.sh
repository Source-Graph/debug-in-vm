
get_guest_ip(){
	local get=$(virsh domifaddr $vm_name)
	local regex="(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

	echo "$get" | grep -o -E "$regex"
}

ip=$(get_guest_ip)


_test.get_ip(){
	echo $ip
}
