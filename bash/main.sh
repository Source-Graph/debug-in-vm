vm_name="Ubuntu"
user="me"

. is_running.sh
. get_ip.sh
. ssh.sh

# test
# _test.get_ip
# ssh_run which python3

run_python(){
  ssh_run python3 /home/me/vm1/inVM/main.py
}

run_python
