FROM amazoncorretto:8u372-alpine3.17
RUN apk --update add curl bash ttf-dejavu && rm -rf /var/cache/apk/
VOLUME [ "/java" ]
