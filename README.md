# Pimatic for Docker

"*pimatic is a home automation framework that runs on node.js. It provides a common extensible platform for home control and automation tasks.*"

This Dockerfile will create a container based on node:4.7 and pimatic (v0.9) via NPM

## Run 
* Run with ```docker run -p 80:80 -i -t joshendriks/pimatic ```
* start pimatic with ```pimatic.js```, ```pimatic.js start``` or ```service pimatic start```

Pimatic should now be available via ```Dockerhost:80``` 
You can change the port by modifying the -p flag (eg ```-p 8080:80``` for ```Dockerhost:8080```)

default password is "pimatic"
