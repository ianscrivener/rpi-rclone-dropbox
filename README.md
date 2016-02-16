#rpi-rclone-Dropbox

###Why
Use your (inexpensive) Raspberry Pi to backup/sync your files to Dropbox unattended.

###How to create a Dropbox app token  

(1) Create a new API App here https://www.dropbox.com/developers/apps/create  

(2) Click the button to generate a token

![image](img/generate_token.png)

(3) Paste into **conf.txt**


###Usage

**Run to CLI**

````
docker run -it \
	--rm=true \
	-v [path-to-your-Dropbox-data]:/home/pi/rclone/Dropbox \
	-v conf.txt:/root/.rclone.conf \
	ianscrivener/rpi-rclone-dropbox
	
````

**Run as a daemon**

````
docker run -d \
	-v [path-to-your-Dropbox-data]:/home/pi/rclone/Dropbox \
	-v conf.txt:/root/.rclone.conf \
	-t dropbox-sync \
	ianscrivener/rpi-rclone-dropbox
	
````



###Thanks  
Standing on the shoulders of giants;

**[Nick Craig-Wood's](https://github.com/ncw)** [rclone](http://rclone.org/) - an excellent utility written in Go

**[Hypriot's](http://http://blog.hypriot.com/)** [rpi-golang](https://hub.docker.com/r/hypriot/rpi-golang/) Docker image for Raspberry Pi 


