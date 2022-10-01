
ssh_run(){
  command=$1

  ssh $user@$ip "$*"
}
