
# Small Docker image for the distributed version of NodeRED

FROM alpine:3.8

RUN apk update && \
    apk upgrade && \
    apk add npm

RUN npm install -g --unsafe-perm node-red

ENTRYPOINT ["node-red"]
