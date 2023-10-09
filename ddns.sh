#!/bin/bash
#ddclient cam.openlg.com >> /var/log/ddns.log
ddclient cam.openlg.com -v | grep "cam.openlg.com\|Date" >> /var/log/ddns.log

