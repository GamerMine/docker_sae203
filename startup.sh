#!/bin/bash

# On démarre le service video de jitsi
service jitsi-videobridge2 start
service prosody start
service jicofo start

# On demarre nginx
nginx -g 'daemon off;'

