From alpine:latest
MAINTAINER panmourovaty

# Update
RUN apk update && apk upgrade

# Add scripts
ADD ./run.sh /opt/run.sh
ADD ./prepare.sh /opt/prepare.sh

# Run script
RUN /bin/sh /opt/prepare.sh

CMD /bin/sh /opt/run.sh
