# Choose between SSH or Libvirt NSS

connection(){
  if [ $use == "ssh" ];then
    . ssh.sh
    connection="ssh"
  elif [ $use == "nss" ];then
    . libvirt_nss.sh
    connection="nss"
  fi

  if $debug;then
    echo "Connection: $connection"
  fi
}

connection
