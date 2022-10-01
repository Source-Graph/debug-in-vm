use=ssh
vm_name="Ubuntu"
user="me"

debug=false # debug=true

# import
. is_running.sh
. get_ip.sh
. connection.sh

run_python(){
  if $debug;then ssh_run which python3 ;fi

  ssh_run python3 /home/me/vm1/inVM/main.py
}

run_python
