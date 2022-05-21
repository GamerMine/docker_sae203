# Lancer un serveur web de video conference 

## Instructions pour lancer le serveur Jitsi Meet

- Vérifiez si docker est installé :
```shell
docker --version
```

- Se placer dans un répertoire pour stocker les fichiers
```shell
cd ./<chemin-pour-le-referentiel>
```

- Cloner le dépot :
 ```shell
git clone git@github.com:GamerMine/docker_sae203.git
```

- Accéder au dépot :
```shell
cd docker_sae203
```

- Construisez l'image décrite dans Dockerfile avec docker build : 
```shell
docker build -t <choisir-un-nom-pour-l'image> .
```

- Pour lancer le serveur web :
```shell
docker run -d -p 443:443 <nom-de-l'image-choisie>
```

- Vérifier que l'application est en cours d'exécution. Pour ce faire, ouvrez un navigateur et tapez dans la barre url : ```https://127.0.0.1:443```

## Instruction pour vérifier l´existence du conteneur et de l´image

- Pour vérifier que l´image a été créer, on affiche la liste des ilages avec :
```shell
docker images
```

- Pour vérifier que le conteneur est créé et en cours de fonctionnement :
```shell
docker ps
```

- Pour afficher la liste de tous les conteneurs :
```shell
docker ps -a
```

## Instruction pour supprimer le conteneur ou l´image
#Pour supprimer une image, il faut supprimer tous les conteneurs qui la contiennent

- Il faut d’abord taper dans le terminal pour arrêter le conteneur  :
```shell
docker stop <nom-du-conteneur-choisie>
```
- Et ensuite, pour supprimer le conteneur existant pour éviter de créer un conteneur différent à chaque lancement :
```
docker rm <nom-du-conteneur-choisie>
```

- Pour stopper et supprimer tous les conteneurs nous pouvons utiliser ces commandes :
```shell
docker stop $(docker ps -qa)
```
```shell
docker rm $(docker ps -qa)
```
- Ensuite pour supprimer l´image, il faut faire cette commande :
```shell
docker image rm <nom-de-l´image>
```

