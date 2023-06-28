# Allowed Hosts

## Solution:
https://kifarunix.com/how-to-setup-apt-caching-server-using-apt-cacher-ng-on-ubuntu-18-04/

# AllowUserPorts: 80 443
error: `403  Configuration error (confusing proxy mode) or prohibited port (see AllowUserPorts)`

## Solution:
https://forum.qubes-os.org/t/solved-apt-cahcer-ng-and-debian-12-testing/14266


# Invalid response from proxy: HTTP/1.0 403 CONNECT denied
[sch:](https://www.google.com/search?q=403+connect+denied+(ask+the+admin+to+allow+https+tunnels))

## Solution:
https://forum.qubes-os.org/t/trouble-setting-up-apt-cacher-ng/12223

>In your templates you need to edit the apt source files, so the urls instead of being https:// become http://HTTPS///.
>
>You can do it quickly with these commands (run as root):
>```
>sed -i 's#https://#http://HTTPS///#g' /etc/apt/sources.list
>sed -i 's#https://#http://HTTPS///#g' /etc/apt/sources.list.d/*.list
>```


# 503 errors - Found it! You have to run `apt update` Twice!
Bug report: https://bugs.launchpad.net/ubuntu/+source/apt-cacher-ng/+bug/1960264

## Solution:
just run `apt update` twice

[sch:](https://www.google.com/search?q=%22aptcacherng%22+%22HTTP+error%2C+code%3A+503%22)