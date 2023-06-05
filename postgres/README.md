local postgres with volume persistance using docker-compose

this is just minimal for now.  For a more interesting installation see 
../../Docker-remember/postgres

password is ignored because it is stored in the volume.  to reinitialize use a new volume and 
```
    environment:
        - POSTGRES_PASSWORD=my_password 
```

