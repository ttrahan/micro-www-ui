FROM 288971733297.dkr.ecr.us-east-1.amazonaws.com/micro-image:master.3

# this folder must be created in the base images
ADD . /root/micro-www/

#now run set up
RUN /bin/bash /root/micro-www/setup.sh

ENTRYPOINT ["/root/micro-www/boot.sh"]
