FROM redis:5

# Install required dependencies
RUN apt-get update && apt-get install -yq \
    vim \
    emacs \
    curl \
    gpg \
    procps \
    telnet \
    netcat

# Install and configure Ruby and Ruby Version Manager (RVM)
RUN mkdir ~/.gnupg
RUN echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf
RUN command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN sed -i -e 's/mesg n .*true/tty -s \&\& mesg n/g' /root/.profile

# Install redis and bloomfilter-rb (allows access to Redis and the ability to create Redis-backed bloom filters)
SHELL ["/bin/bash", "-l", "-c"]
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh"
RUN gem install redis hiredis bloomfilter-rb

# Install Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
RUN nvm install node

# Add examples and lectures
ADD ./examples /app/redis/examples

COPY redis.conf /usr/local/etc/redis/redis.conf
