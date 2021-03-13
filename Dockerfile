FROM ubuntu:18.04
WORKDIR /app
COPY ./daemon_settings.yaml .
COPY ./lbrynet .
EXPOSE 5279/tcp 5280/tcp
CMD [ "./lbrynet", "start", "--config=daemon_settings.yaml" ]
