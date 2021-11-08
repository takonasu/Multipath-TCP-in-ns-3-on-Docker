# Multipath-TCP in ns-3 on Docker
This repository can build the environment of [mkheirkhah/mptcp](https://github.com/mkheirkhah/mptcp) on docker.  

# How to use
To build environment and run, run the following command.  
```
$ docker-compose up -d
```

On the container, run these commands and you can check the MPTCP activities.  
You may be asked to run `./waf configure` first.
```
$ cd /src/mptcp
$ ./waf --run "mptcp"
```
