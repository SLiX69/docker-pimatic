# Pimatic for Docker

"*pimatic is a home automation framework that runs on node.js. It provides a common extensible platform for home control and automation tasks.*"

This Dockerfile will create a container based on Debian, installs NodeJS (v0.10.41) and pimatic (v0.8) via NPM


## Setup

* [Install Docker](https://docs.docker.com/engine/installation/)
* Clone this repo or just download the Dockerfile


## Basic usage


### Build

* Navigate to the Dockerfile
* Run ```docker build -t my_pimatic .``` ID = *my_pimatic* - take what you like
* Wait till build is finished

### Run 
* Run with ```docker run -p 80:80 -i -t my_pimatic ```
* wait till container boot
* start pimatic with ```pimatic.js start```

Pimatic should now be available via ```Dockerhost:80``` 
You can change the port by modifying the -p flag (eg ```-p 8080:80``` for ```Dockerhost:8080```)


default password is "abcd1234" (Will change this)
