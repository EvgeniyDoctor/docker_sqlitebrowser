# Sqlitebrowser in docker
Image based on: https://github.com/jlesage/docker-baseimage-gui<br>
Sqlite Browser: https://sqlitebrowser.org/<br>
Docker hub: https://hub.docker.com/r/evgeniydoctor/sqlitebrowser

## Run
```
docker run -d \
--name sqlitebrowser \
-p 5800:5800 \
-e VNC_PASSWORD=password \
-e KEEP_APP_RUNNING=1 \
-v /path/dir:/dbs/dir \
-v /path/db.db:/dbs/db.db \
evgeniydoctor/sqlitebrowser:latest
```

You can mount databases one by one, or a dir of databases, or mix all of it, as in the example!

You can run a container without any environment variables.<br>
For more information about environment variables visit https://github.com/jlesage/docker-baseimage-gui
