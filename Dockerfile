FROM hypriot/rpi-golang

MAINTAINER Ian Scrivener <docker@zilogy.asia>

WORKDIR /root

COPY conf.txt /root/.rclone.conf

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends unzip wget

RUN wget http://downloads.rclone.org/rclone-v1.27-linux-arm.zip
RUN unzip rclone-v1.27-linux-arm.zip -d .
RUN mv /root/rclone-v1.27-linux-arm/rclone /bin
RUN chmod 744 /bin/rclone

#Clean up
# RUN apt-get remove wget unzip -y
# RUN rm -rf /root/*
# RUN rm -rf /var/lib/apt/lists/*