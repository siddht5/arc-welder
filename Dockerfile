
#The thshaw/arc_welder image contains Chrome, ARC Welder app and WebGL is enabled.  See README.md for more details.

# docker run -it \
#	--net host \
#	--cpuset-cp 0 \
#	--memory 512mb \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	-v /home/tom/Downloads:/root/Downloads \
#	--device /dev/snd \
#	--name arcwelder
#	thshaw/arc_welder

FROM thshaw/arc_welder

MAINTAINER thshaw 

ENTRYPOINT [ "/usr/bin/google-chrome" ]

#This is the app-id of ARC Welder that we installed 
CMD [ "--user-data-dir=/data", "--app-id=emfinbmielocnlhgmfkkmkngdoccbadn" ]

