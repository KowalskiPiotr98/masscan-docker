# masscan-docker
This is a docker image for masscan.

Read more about masscan at https://github.com/robertdavidgraham/masscan

You can run any masscan just by prepending 'docker run --rm sha512sum/' to your usual masscan command, for example:

masscan -p 1-1024 192.168.1.1 --rate=200

becomes

docker run --rm sha512sum/masscan -p 1-1024 192.168.1.1 --rate=200