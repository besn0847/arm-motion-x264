FROM resin/rpi-raspbian:jessie

RUN apt-get update && \
        apt-get install -y --force-yes --no-install-recommends \
                vim && \ 
        apt-get autoclean && \
        apt-get autoremove && \
        rm -rf /var/lib/apt/lists/*

ADD ./usr/local/ /usr/local/ 

ENV LD_LIBRARY_PATH /usr/local/lib/

RUN mkdir /data && \
	mkdir /conf && \
	mkdir /bootstrap
	
ADD ./motion.conf /bootstrap/
ADD ./startup.sh /

EXPOSE 8080
EXPOSE 8081

ENTRYPOINT ["/startup.sh"]
