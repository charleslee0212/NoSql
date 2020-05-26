FROM neo4j:3.4.13

# Install required dependencies
RUN apk update && apk add\
    vim \
    emacs \
    curl

# Add examples and lectures
ADD ./examples /app/neo4j/examples
