FROM ubuntu

ENV APP_PATH /root/csgo-server/vm

WORKDIR $APP_PATH

COPY . $APP_PATH

RUN ./linux-deps.sh

RUN ./setup.sh

CMD ['/server/csgo/start.sh']

