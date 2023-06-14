FROM debian:12-slim
MAINTAINER Laurenz Grote <mail@laurenzgrote.de>

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN echo "Initial update." &&\
    apt-get update &&\
# install utilities
    echo "Installing ssh." &&\
    apt-get install -f -y ssh

# clean up all temporary files
RUN echo "Clean up all temporary files." &&\
    apt-get clean -y &&\
    echo "Delete man pages and documentation." &&\
    rm -rf /usr/share/man &&\
    mkdir -p /usr/share/man &&\
    echo "All done."
