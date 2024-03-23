cd ..

in_container_server(){
  cd ansible
  ansible-playbook in\ container.yml
  cd -
}

vagrant_client(){
  ubuntu_version=22.04
  cd vagrant/Ubuntu/$ubuntu_version/
  ./ln.sh
  vagrant up
  cd -
}

list_cache(){
  ls -h ~/.uni/data/proxy-cache/apt-cacher-ng/mirrors.edge.kernel.org/ubuntu/dists
}

main(){
  in_container_server
  vagrant_client
  sleep 5
  list_cache
}
