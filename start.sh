#!/bin/bash
# -----------------------------------------------------------------------------
# minecraft /start.sh script
# -----------------------------------------------------------------------------

if [ ! -f /srv/server.jar ]
then
    wget "https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar" -O /srv/server.jar
fi

if [ ! -f /srv/eula.txt ]
then
    echo "eula=true" > /srv/eula.txt
fi

cd /srv/ && java -Xms1024M -Xmx1024M -jar server.jar nogui
