FROM centos:7.4.1708
MAINTAINER Allen Cai caizz520@gmail.com

RUN yum clean all && yum clean metadata && yum clean dbcache && yum makecache && yum -y update

RUN rpm --rebuilddb && yum install -y wget unzip tar

RUN rpm -Uvh https://github.com/rabbitmq/erlang-rpm/releases/download/v20.1.7/erlang-20.1.7-1.el7.centos.x86_64.rpm

RUN rpm --rebuilddb && yum install -y erlang

RUN rpm --import https://www.rabbitmq.com/rabbitmq-release-signing-key.asc

RUN rpm --rebuilddb && yum install -y https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.7.0/rabbitmq-server-3.7.0-1.el7.noarch.rpm

RUN /usr/sbin/rabbitmq-plugins list <<<'y'
RUN /usr/sbin/rabbitmq-plugins enable --offline rabbitmq_management

#CMD /usr/sbin/rabbitmq-server
