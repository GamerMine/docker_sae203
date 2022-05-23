# On se base sur l'image Docker de Debian
FROM debian:latest

# On met à jour Debian et on installe les paquets nécessaires
RUN apt update && \
    apt upgrade -y && \
    apt install -y gnupg2 nginx-full wget curl openjdk-11-jre apt-transport-https

# On ajoute le dépot contenant Prosody, une dépendance pour Jitsi
RUN echo deb http://packages.prosody.im/debian $(cat /etc/os-release | grep VERSION_CODENAME | cut -d"=" -f2) main | tee -a /etc/apt/sources.list && \
    wget https://prosody.im/files/prosody-debian-packages.key -O- | apt-key add -

# On ajoute aussi le dépot contenant Jitsi
RUN curl https://download.jitsi.org/jitsi-key.gpg.key | sh -c 'gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg'
RUN echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null

# On met à jour les dépots
RUN apt update

# On ajoute des réponses aux divers question posées lors de l'installation du paquet jitsi-meet et de ses dépendances
COPY automatic-jitsi-answers /root/
RUN debconf-set-selections /root/automatic-jitsi-answers

# On install jitsi
RUN apt install -y jitsi-meet

# On expose les ports nécessaires pour l'ensembles des communications avec Jitsi
EXPOSE 80 	# Port pour NGINX
EXPOSE 443	# Port pour NGINX
EXPOSE 10000 	# Port pour Jitsi

# On supprime la configuration NGINX par défaut
RUN rm /etc/nginx/sites-enabled/default

# On copie le script startup.sh dans le dossier /root/
COPY startup.sh /root/

# On donne les droits d'éxecution du fichier startup.sh
RUN chmod +x /root/startup.sh

# Le script startup.sh se lanceras a l'issue de la commande docker run
CMD /root/startup.sh
