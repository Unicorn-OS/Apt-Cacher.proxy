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
