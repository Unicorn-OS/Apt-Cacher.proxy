# native install
sudo rm -r /var/cache/apt-cacher-ng/* ; sudo systemctl restart apt-cacher-ng

# in Container
podman stop apt-cacher-ng ; sudo rm -r ~/.uni/data/apt-cacher-ng/* ; podman rm apt-cacher-ng
podman run -d -p 3142:3142 -v ~/.uni/data/apt-cacher-ng:/var/cache/apt-cacher-ng --name apt-cacher-ng apt-cacher-ng.server