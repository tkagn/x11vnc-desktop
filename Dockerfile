FROM registry.fedoraproject.org/fedora:latest
ENV DISPLAY=:0
WORKDIR /

# Install Virtual framebuffer, vnc server, and small window manager
RUN dnf -y install Xvfb tigervnc-server jwm x11vnc \
&&  dnf clean all \
&& rm -rf /var/cache/yum

COPY startx11-vnc.sh /

# Expose 5900 for rfb traffic
EXPOSE 5900

# Run Samba Daemon
cmd ["/bin/bash", "startx11-vnc.sh"]
