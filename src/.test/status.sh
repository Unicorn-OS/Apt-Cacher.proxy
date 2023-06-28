sudo systemctl status apt-cacher-ng.service

ls /var/cache/apt-cacher-ng

ss -altnp | grep apt

tail -f /var/log/apt-cacher-ng/apt-cacher.log

du -h /var/cache/apt-cacher-ng