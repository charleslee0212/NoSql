FROM neo4j:3.4.13

# Install required dependencies
RUN apk update && apk add \
    vim \
    emacs \
    curl

# Copy custom config file
COPY neo4j.conf /var/lib/neo4j/conf/neo4j.conf

# Copy pre-built movies database
COPY movies.db /data/databases/movies.db
