FROM alpine:latest


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apk update && apk add util-linux && apk add bash

ENTRYPOINT ["/entrypoint.sh"]
