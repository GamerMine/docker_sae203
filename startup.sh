#!/bin/bash

# On démarre les services pour Jitsi
service jitsi-videobridge2 start
service prosody start
service jicofo start

# On demarre nginx en foreground
nginx -g 'daemon off;'

