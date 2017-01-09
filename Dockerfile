FROM polinux/php:5.4
MAINTAINER Przemyslaw Ozgo linux@ozgo.info

ENV \
  PHPSTORM_VERSION=2016.3.2

RUN  \
  rpm --rebuilddb && yum clean all && \
  yum install -y \
    epel-release && \
  yum update -y && \
  yum install -y  \
    wget \
    which \
    xorg-x11-fonts-misc \
    xorg-x11-fonts-Type1 \
    java-1.8.0-openjdk && \
  yum clean all && rm -rf /tmp/yum* && \
  mkdir /opt/phpstorm && \
  wget -O - https://download.jetbrains.com/webide/PhpStorm-${PHPSTORM_VERSION}.tar.gz | tar xzf - --strip-components=1 -C "/opt/phpstorm" && \
  useradd -m -s /bin/bash developer && \
  mkdir /home/developer/.PhpStorm2016.3 &&  \
  touch /home/developer/.PhpStorm2016.3/.keep && \
  chown -R developer.developer /home/developer

USER developer

VOLUME /home/developer/.PhpStorm2016.3

CMD ["/opt/phpstorm/bin/phpstorm.sh"]
