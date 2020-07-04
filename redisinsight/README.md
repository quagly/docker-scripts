# redis browser based gui tool

I have been unable to get this to connect to local redis.
Have not tried remote redis

instructions [here](https://docs.redislabs.com/latest/ri/installing/install-docker/)

docker run -v redisinsight:/db -p 8001:8001 redislabs/redisinsight:latest

# view logs and progress
docker run -v redisinsight:/db -p 8001:8001 -it redislabs/redisinsight:latest


