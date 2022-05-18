#!/bin/bash

# On démarre le service video de jitsi
service jitsi-videobridge2 start

# On demarre nginx
nginx -g 'daemon off;'

