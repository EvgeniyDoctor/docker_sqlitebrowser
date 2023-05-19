FROM jlesage/baseimage-gui:alpine-3.15-v4

RUN add-pkg sqlitebrowser

# editing of databases is available only in /config dir (bcos of 'app:app'); and /config can contain some other dirs and i do not like it, so here is new dir. Symbolic link exists bcos it is impossible to set /config as a HOME dir.
RUN mkdir -p /config/dbs && ln -s /config/dbs /dbs

# ENABLE_CJK_FONT - no text in sqlitebrowser without it; HOME - in the open file dialog this folder will be in the left section of it
ENV ENABLE_CJK_FONT=1 HOME=/dbs

# very important info
RUN \
	set-cont-env APP_NAME "sqlitebrowser" \
	&& set-cont-env APP_VERSION "3.12.2" \
	&& set-cont-env DOCKER_IMAGE_VERSION "1.0"

# no 'CMD' or 'ENTRYPOINT'! Write it in startapp.sh
COPY ./startapp.sh /startapp.sh
RUN chmod 755 /startapp.sh
