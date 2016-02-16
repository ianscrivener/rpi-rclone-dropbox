#!/usr/bin/env bash
docker run -it --rm=true \
	-v /mnt/Seagate/Dropbox:/home/pi/rclone/Dropbox \
	-v conf.txt:/root/.rclone.conf \
	ianscrivener/rpi-rclone-dropbox \
    rclone --transfers=1 -v copy /home/pi/rclone/Dropbox/Photos Dropbox:/Photo
