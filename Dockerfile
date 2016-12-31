FROM fedora:25
MAINTAINER Emory Merryman emory.merryman@gmail.com
RUN \
    dnf update --assumeyes && \
    dnf install --assumeyes gnupg2 && \
    dnf clean all && \
    true
ENTRYPOINT ["/usr/bin/gpg2"]
CMD []
