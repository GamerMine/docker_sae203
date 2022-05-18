# Lancer un serveur web de video conference 

## Instructions pour lancer le site web

- Vérifiez si docker est installé :
```shell
docker --version
```

- Se placer dans un répètoire pour stocker les fichiers
```shell
cd ./<chemin-pour-le-referentiel>
```

- Cloner le référentiel :
 ```shell
git clone git@github.com:GamerMine/docker_sae203.git
```

- Aller au référentiel :
```shell
cd docker_sae203
```

- Construisez l'image décrite dans dockerfile avec docker build : 
```shell
docker build -t <choisir-un-nom-pour-l'image> .
```

- Lancer le serveur web :
```shell
docker run -d -p 8080:80 <nom-de-l'image-choisie>
```

- Vérifier que l'application est en cours d'exécution. Pour ce faire, ouvrez un navigateur et tapez dans la barre url : ```localhost:8080```

## Instruction pour éteindre le conteneur

- Il faut d’abord taper dans le terminal pour arrêter le conteneur  :
```shell
docker stop <nom-de-l'image-choisie>
```
- Et ensuite, pour supprimer le conteneur existant pour éviter de créer un conteneur différent à chaque lancement :
```
docker rm <nom-de-l'image-choisie>
```
