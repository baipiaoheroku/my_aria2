FROM ubuntu


COPY root /
RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update
RUN apt-get install aria2 -y


RUN sudo chmod 777 /rclone
RUN mv /rclone /usr/bin/

RUN sudo chmod 777 /start.sh
CMD bash start.sh