FROM neo4j:3.4.13-enterprise

# Install required dependencies
RUN apk update && apk add \
    vim \
    emacs \
    curl \
    busybox-extras

# Copy custom config file
COPY neo4j.conf /var/lib/neo4j/conf/neo4j.conf
