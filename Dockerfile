FROM aye0aye/micro-image:flat.1

# this folder must be created in the base images
ADD . /root/image-www/

#now run set up
RUN /bin/bash /root/image-www/setup.sh

ENTRYPOINT ["/root/image-www/boot.sh"]
