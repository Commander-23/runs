#/bin/bash

groupadd -g 3000 media

useradd -g 3000 -u 3101 -m -d /home/prowlarr -s /sbin/nologin prowlarr
useradd -g 3000 -u 3102 -m -d /home/radarr -s /sbin/nologin radarr
useradd -g 3000 -u 3103 -m -d /home/sonarr -s /sbin/nologin sonarr
useradd -g 3000 -u 3104 -m -d /home/lidarr -s /sbin/nologin lidarr
useradd -g 3000 -u 3105 -m -d /home/jellyfin -s /sbin/nologin jellyfin
useradd -g 3000 -u 3106 -m -d /home/jellyseer -s /sbin/nologin jellyseer
useradd -g 3000 -u 3107 -m -d /home/deluge -s /sbin/nologin deluge
useradd -g 3000 -u 3108 -m -d /home/flaresolverr -s /sbin/nologin flaresolverr