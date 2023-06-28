# Invalid response from proxy: HTTP/1.0 403 CONNECT denied
## works!:
- vagrant: `box = "debian/buster64"`

## failed on:
- vagrant: `box = "generic/ubuntu2204"`


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

