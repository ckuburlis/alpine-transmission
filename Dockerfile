FROM alpine:3.3

RUN apk update && apk add \
	transmission-daemon \
	&& rm -rf /var/cache/apk/*

EXPOSE 9091 51413
VOLUME ["/root/.config/transmission-daemon"]

ENTRYPOINT ["/usr/bin/transmission-daemon"]
CMD [ "--foreground" ]