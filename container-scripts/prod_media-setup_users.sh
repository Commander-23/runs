#/bin/bash

groupadd -g 3000 media

useradd -g 3000 -u 3101 -m -d /home/cmdr/docker-user/prowlarr -s /sbin/nologin prowlarr
useradd -g 3000 -u 3102 -m -d /home/cmdr/docker-user/radarr -s /sbin/nologin radarr
useradd -g 3000 -u 3103 -m -d /home/cmdr/docker-user/sonarr -s /sbin/nologin sonarr
useradd -g 3000 -u 3104 -m -d /home/cmdr/docker-user/lidarr -s /sbin/nologin lidarr
useradd -g 3000 -u 3105 -m -d /home/cmdr/docker-user/jellyfin -s /sbin/nologin jellyfin
useradd -g 3000 -u 3106 -m -d /home/cmdr/docker-user/jellyseer -s /sbin/nologin jellyseer
useradd -g 3000 -u 3107 -m -d /home/cmdr/docker-user/deluge -s /sbin/nologin deluge
useradd -g 3000 -u 3108 -m -d /home/cmdr/docker-user/flaresolverr -s /sbin/nologin flaresolverr