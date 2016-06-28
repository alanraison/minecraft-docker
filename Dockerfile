FROM library/java:latest
RUN mkdir /mc
WORKDIR /mc
ADD \
  banned-ips.json \
  banned-players.json \
  https://s3.amazonaws.com/Minecraft.Download/versions/1.10.2/minecraft_server.1.10.2.jar
  ops.json \
  server.properties \
  whitelist.json \
  /mc/
EXPOSE 25565
CMD ["java", "-Xmx1024M","-Xms1024M","-jar","minecraft_server.1.10.2.jar","nogui"]
