FROM ubuntu:bionic

RUN apt-get update && apt-get install -y firefox
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/user && \
    echo "user:x:${uid}:${gid}:User,,,:/home/user:/bin/bash" >> /etc/passwd && \
    echo "user:x:${uid}:" >> /etc/group && \
    chown ${uid}:${gid} -R /home/user

USER user

COPY files/user.js /home/user/
COPY files/start.sh /home/user/

ENV HOME /home/user
CMD /bin/bash /home/user/start.sh
