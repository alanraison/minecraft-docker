minecraft-docker
================

A docker container for a minecraft server.

In order to run the server, the file "eula.txt" must be placed in the minecraft directory, containing the string

```
eula=true
```

Therefore, this container must be extended by consumers, with a Dockerfile which looks like:
```
FROM alanraison/minecraft
COPY eula.txt ./
```
Then the container can be run as follows:

```
docker build -t minecraft .
docker run -d minecraft
```
