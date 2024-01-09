# Cause:
[–wrote on 2017-02-02:](https://bugs.launchpad.net/ubuntu/+source/apt-cacher-ng/+bug/1661199)
>@wiredfool, this is the expected behavior and I ran into it as well. Since apt-cacher-ng cannot cache the HTTPS connection so it's refusing to proxy it. A possible workaround is to let it pass through apt-cacher-ng using a regex like that in the config file:
>
>\# Required for HTTPS outbound
>PassThroughPattern: ^apt\.dockerproject\.org:443$

>FYI. if you need to pass through more than one HTTPS destination, use that syntax as there can only be one PassThroughPattern directive:
>
>PassThroughPattern: ^(apt\.dockerproject\.org|registry\.npmjs\.org|packages\.graylog2\.org|graylog2-package-repository\.s3\.amazonaws\.com|artifacts\.elastic\.co):443$