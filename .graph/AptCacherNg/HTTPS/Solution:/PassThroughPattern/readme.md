# Does Not fix the issue, but Bypasses it!
https://github.com/vector-im/element-web/issues/3573
>after adding
> `PassThroughPattern: riot\.im:443$`
>
>in /etc/apt-cacher-ng/acng.conf I can connect to https as well. Closing this issue.
--

>Or you can simply allow CONNECT for every https host:
>
>`PassThroughPattern: .*`

--
https://bugs.launchpad.net/ubuntu/+source/apt-cacher-ng/+bug/1661199/comments/1

># Required for HTTPS outbound
>PassThroughPattern: ^apt\.dockerproject\.org:443$
>
>FYI. if you need to pass through more than one HTTPS destination, use that syntax as there can only be one PassThroughPattern directive:
>
>PassThroughPattern: ^(apt\.dockerproject\.org|registry\.npmjs\.org|packages\.graylog2\.org|graylog2-package-repository\.s3\.amazonaws\.com|artifacts\.elastic\.co):443$