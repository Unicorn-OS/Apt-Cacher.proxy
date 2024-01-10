# Is port Open?
# https://stackoverflow.com/questions/4922943/test-if-remote-tcp-port-is-open-from-a-shell-script

nc -z localhost 3142
echo $?

# should be 0, if working.

nc -z 192.168.1.117 3142
echo $?