# Important:
When running AptCacher on localhost and using Vagrant-libvirt's default networking: You have to restart apt-cacher-ng once vagrant vm has started, because a virtual network will appear 'vagrant-libvirt (virbr1)'! Otherwise apt-cacher-ng will not be available on the new network. Then run `sudo apt update` in guest! Now caching will work.

## steps:
1. host:
```sudo systemctl restart apt-cacher-ng```

2. guest:
```sudo apt update```


# Test
## Works:
- debian/bullseye64
- debian/buster64
- generic/debian11

## Doesn't work:
- generic/ubuntu2204

Unknown bug! I can't figure out why?
