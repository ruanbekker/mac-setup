# vpn: home
vpn_home(){
  sshuttle -r home-bastion 192.168.0.0/24
}

# mysql
mysql(){
  docker run --rm -it ruanbekker/mysql-client "$@"
}
