FROM aye0aye/micro-image:flat.1

# this folder must be created in the base images
ADD . /root/micro-www/

ENV API_URL=http://micro-api-beta.us-east-1.elasticbeanstalk.com:80 WWW_PORT=80 DEBUG_LEVEL=error SHUD_LOG_TO_FILE=true

#now run set up
RUN /bin/bash /root/micro-www/setup.sh

ENTRYPOINT ["/root/micro-www/boot.sh"]
