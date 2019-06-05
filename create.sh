#!/bin/bash
docker run -itd \
--name=smokeping \
-e PUID=1000 \
-e PGID=1000 \
-e TZ=Asia/Shanghai \
-p 8088:80 \
-v /var/local/docker/smokeping/config:/config \
-v /var/local/docker/smokeping/data:/data \
--restart unless-stopped \
liujinbao3000/smokeping
echo alias smokeping=\"bash /var/local/docker/smokeping/config/smokeping\" >> ~/.bashrc
echo alias smokeping=\"bash /var/local/docker/smokeping/config/smokeping\"  >> ~/.zshrc
