FROM steamcmd/steamcmd

ENV TIMEZONE=Europe/Vienna \
    DEBIAN_FRONTEND=noninteractive \
    PUID=0 \
    PGID=0 \
    ALWAYS_UPDATE_ON_START=false \
    GAME_PORT=8211 \
    MAX_PLAYERS=16 \
    MULTITHREAD_ENABLED=true \
    COMMUNITY_SERVER=true \
    PUBLIC_IP=0.0.0.0 \
    PUBLIC_PORT=8211

VOLUME [ "/palworld" ]

EXPOSE 8211/udp

ADD --chmod=777 servermanager.sh /servermanager.sh

CMD ["/servermanager.sh"]
