FROM       mrinus/openwrt-x86-64-generic-rootfs
MAINTAINER Michael Rinus <michael.rinus@holisticsystems.de>
RUN mkdir /var/lock && \
    opkg update && \
    opkg install mosquitto mosquitto-client libmosquitto

EXPOSE 1883

CMD ["mosquitto"]
