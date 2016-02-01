# docker-sonarr

This is a docer container to run the Sonarr DVR application.  It works well with my NZBGET container.

This implementation stores all the logs and config information in the /data volume which I mount to my docker host along with my NAS where the media is stored.  My NZBGET agent moves items to the same NAS mount and Sonarr takes care of the renaming and moving of files.

```docker run --name="sonarr" --publish=8989:8989 --volume=/data/warehouse/sonarr:/data --volume=/mnt/media:/mnt/media --restart="always" --detach=true jusrob/sonarr``` 
