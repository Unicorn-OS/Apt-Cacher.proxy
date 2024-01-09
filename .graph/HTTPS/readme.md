# Problem: Fails on HTTPS repo
Fails to use proxy if /etc/apt/sources.list has 'https':

error: "Invalid response from proxy: HTTP/1.0 403 CONNECT denied"

sch:
- https://www.google.com/search?q=apt-cacher-ng+%22Acquire%3A%3Ahttp%22+https

## Bug:
- https://bugs.launchpad.net/ubuntu/+source/apt-cacher-ng/+bug/1661199

## discuss:
https://github.com/nodesource/distributions/issues/71


# Solution:
## Guide:
https://blog.packagecloud.io/using-apt-cacher-ng-with-ssl-tls/

[ark:](https://web.archive.org/web/20240109204134/https://blog.packagecloud.io/using-apt-cacher-ng-with-ssl-tls/)

### relation:
https://github.com/nodesource/distributions/issues/71#issuecomment-134512850

>We recently blogged about how to use apt-cacher-ng with packagecloud.io debian repositories (all of which are served over TLS) [on our blog](https://blog.packagecloud.io/using-apt-cacher-ng-with-ssl-tls/). The configuration settings explained there should solve this issue for the people having trouble on this thread.
>
>I'd recommend that you do not support plain HTTP access to your repositories. FWIW, we offer no plain http access at packagecloud and haven't had trouble so far :)
