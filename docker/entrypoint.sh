#!/bin/bash

envsubst < /srv/gisapi/docker/settings.js.tpl > /srv/gisapi/settings/settings.js
cd /srv/gisapi/
exec nodejs app.js 2>&1 | ts '%Y-%m-%d %H:%M:%S INFO ' >> /var/log/gisapi_other.log
