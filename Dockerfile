# On se base sur l'image Docker de Debian
FROM debian:latest

# On met à jour Debian et installation des paquets nécessaires
RUN apt update && \
    apt upgrade -y && \
    apt install -y gnupg2 nginx-full wget curl openjdk-11-jre apt-transport-https

# On ajoute le dépot contenant Prosody, une dépendance pour Jitsi
RUN echo deb http://packages.prosody.im/debian $(lsb_release -sc) main | tee -a /etc/apt/sources.list && \
    wget https://prosody.im/files/prosody-debian-packages.key -O- | apt-key add -

# On ajoute aussi le dépot contenant Jitsi
RUN curl https://download.jitsi.org/jitsi-key.gpg.key | sh -c 'gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg'
RUN echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null

# On met à jour les dépots
RUN apt update

# On expose les ports nécessaires pour l'ensembles des communications avec Jitsi
EXPOSE 80
EXPOSE 443
EXPOSE 10000

RUN apt install -y jitsi-meet

RUN jitsi-meet installation
