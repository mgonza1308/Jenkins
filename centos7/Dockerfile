FROM centos

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo 'remote_user:1234' | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user   -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/bin/ssh-keygen -A > /dev/null 2>&1
EXPOSE 22

CMD /usr/sbin/sshd -D
