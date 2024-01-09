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

# Ubuntu
## Problem: /etc/apt/sources.list 'https'
There are differences between the /etc/apt in a Default iso install and the vagrant images, that causes apt-cacher proxy to break! Test: I copied /etc/apt from a known good VM into a running vagrant and it worked.

affects:
- generic/ubuntu2204

### Cause
This error is caused by vagrant boxes having all 'https' in /etc/apt/sources.list.

### Solution
Replace https with http:
```
sudo sed -i 's/https/http/' /etc/apt/sources.list
```