# Lumen Installer

1 Create Docker machine

```
$ docker-machine create lumen-installer
$ docker-machine env lumen-installer
$ eval $(docker-machine env lumen-installer)
```

2 Adjust the .env file
```
$ cp .env.dist .env
$ vi .env
```

3 Run the install script
```
$ chmod +ux bin/* && ./bin/install
```

4 Open browser
```
$ docker-machine ip lumen-installer
$ open <DOCKER_MACHINE_IP>
``` 

# Uninstall
```
$ docker-machine rm lumen-installer
``` 
