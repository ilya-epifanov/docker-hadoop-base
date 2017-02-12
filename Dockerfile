FROM java:8

RUN mkdir /hadoop

RUN apt-get install wget -q -y --no-install-recommends \
 && wget http://ftp.tudelft.nl/apache/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz -O /tmp/hadoop.tar.gz

RUN tar zxf /tmp/hadoop.tar.gz -C /hadoop --strip-components 1 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

