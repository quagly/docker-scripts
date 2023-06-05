# pgAdmin server mode

pgadmin is now offered as a docker extention.  No scripts required.
using the same master password as here

docker hub [dpage/pgadmin4](https://hub.docker.com/r/dpage/pgadmin4/)

connect to [pgadmin](http://localhost:9000)

passwd used to  come from keychain item 'pgadmin'  I would like to get that working again.
For now passwd is hardcoded in run.sh

### not using this in run.sh to set password anymore
###  I suspect the issue is special charachters in the password not allowed by pgadmin
$(security find-generic-password -a ${USER} -s pgadmin -w)
### password that didn't work is
v[^3K$m^MUA%6HQ
