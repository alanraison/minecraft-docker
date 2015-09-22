FROM alanraison/minecraft:1.7.10
RUN mkdir -p /mc/mods
WORKDIR /mc
ADD \
  http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.7.10-10.13.4.1492-1.7.10/forge-1.7.10-10.13.4.1492-1.7.10-installer.jar \
  http://files.minecraftforge.net/maven/net/minecraftforge/forge/1.7.10-10.13.4.1492-1.7.10/forge-1.7.10-10.13.4.1492-1.7.10-universal.jar \
  /mc/
EXPOSE 25565
RUN ["java", "-jar", "forge-1.7.10-10.13.4.1492-1.7.10-installer.jar","-installServer"]
RUN ["rm","forge-1.7.10-10.13.4.1492-1.7.10-installer.jar"]
RUN ["rm","forge-1.7.10-10.13.4.1492-1.7.10-installer.jar.log"]
CMD ["java", "-jar", "forge-1.7.10-10.13.4.1492-1.7.10-universal.jar","nogui"]
