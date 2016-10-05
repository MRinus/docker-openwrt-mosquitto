FROM       mrinus/openwrt-x86-64-generic-rootfs
MAINTAINER Michael Rinus <michael.rinus@holisticsystems.de>

ARG VCS_REF

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/MRinus/docker-openwrt-mosquitto"


RUN mkdir /var/lock && \
    opkg update && \
    opkg install mosquitto mosquitto-client libmosquitto

EXPOSE 1883

CMD ["mosquitto"]
