#!/usr/bin/env bash
docker run -d \
	-v /mnt/Seagate/Dropbox:/home/pi/rclone/Dropbox \
	ianscrivener/rpi-rclone-dropbox \
    rclone --transfers=1 -v copy /home/pi/rclone/Dropbox/Photos Dropbox:/Photo




rclone copy /home/pi/rclone/Dropbox/zzz_rclone Dropbox:/zzz_rclone


rclone –-ignore-existing -v copy /home/pi/rclone/Dropbox/Photos Dropbox:/Photos


copy - no delete

sync - delete on Dropbox

rclone --transfers=1 -v copy /home/pi/rclone/Dropbox/Photos Dropbox:/Photo

