FROM ubuntu:bionic

RUN apt-get update && apt-get install -y firefox \
  curl sudo openvpn transmission \
  && rm -rf /var/lib/apt/lists/*

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/user && \
    echo "user:x:${uid}:${gid}:User,,,:/home/user:/bin/bash" >> /etc/passwd && \
    echo "user:x:${uid}:" >> /etc/group && \
    chown ${uid}:${gid} -R /home/user

# Enable sudo (needed by openvpn, unfortunately)
RUN echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user && \
  chmod 0440 /etc/sudoers.d/user

USER user

RUN mkdir -p /tmp/user.js.d/
COPY files/user.js.d/* /tmp/user.js.d/
RUN cat /tmp/user.js.d/* > /home/user/user.js
COPY files/start.sh /home/user/
COPY files/start-openvpn-blocking.sh /home/user/

ENV HOME /home/user
ENTRYPOINT ["/bin/bash", "/home/user/start.sh"]
CMD ['firefox']
