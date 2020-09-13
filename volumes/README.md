# working with docker volumes

using docker-compose on docker for mac

docker for mac run on [moby](https://mobyproject.org/) linux enviornment
so volumes are still stored in /var/lib/docker but not visible on the mac
as they are inside the moby vm

it is possible to store volumes on the mac host
by default there are limits on where they can be stored
see docker for mac -> preferences -> resources -> file sharing
[docker for mac file sharing](https://docs.docker.com/docker-for-mac/#file-sharing)

[storage options](https://docs.docker.com/storage/) for docker including volumes

always name your volume, otherwise it gets named with a long hex
when naming volumes in docker-compose 3 the name is prepended with the directory name
how to avoid that?  I expect this is an problem for sharing across containers

docker [volume command line](https://docs.docker.com/engine/reference/commandline/volume/)
