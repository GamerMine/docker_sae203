title : Titre

## Docker, Vidéo conférence et Jitsi

### Présentation

  Lors de cette SAé, nous avons appris les bases de Docker afin d'héberger différentes applications, tel que de la visoconférence. Nous nous sommes donc concentrer sur une application communicante et complexe telle que Jitsi.

### Docker 
  
  Le docker permet d'éxecuter des applications dans des conteneurs
 
       >Architecture 
  
  -> Serveur ( demon docker ) : Il peut créer et gérer des images de docker
  
  -> API de Repos : Il indique au demon docker ce qu'il doit faire 
  
  -> Interface de ligne de commande ( CLI ) : C'est un client qui sert à entrer des commandes pour le docker
  
  
       >Conteneurs
  
       >Dockerfile
  
       >Volumes

Pour réaliser notre projet, nous avons créé un Dockerfile, qui une fois lancé, appliquera une suite de commande. 

Nous avons aussi le automatic-jitsi-answers qui répond automatiquement aux éventuels questions que peux poser Jitsi au cours de son installation. 

Nous avons un README qui, une fois lu, permet d'adapter certains bout de fichier aux besoins de l'utilisateurs avant le build de l'image et la création du container.

Et nous avons un startup.sh qui permet de démarrer le service vidéo de Jitsi ainsi que Nginx.

Nous nous intéresserons principalement au Dockerfile. Dans les premières commandes, nous prenons l'image Docker de Debian et nous mettons a jour le système, et installons les paquets nécessaires pour Jitsi. 

Ensuite nous ajoutant une dépandance de Jitsi, du nom de Prosody. Et en plus d'ajouter le dépôt contenant Prosody, on ajoute celui de Jitsi. Puis nous mettons à jour les dépôts.

Ensuite nous copions notre fichier **automatic-jitsi-answers** et nous le lançons afin qu'il complète les questions que nous pose Jitsi. Lors de la commande suivante, celle de son installation.

On expose les ports nécessaires pour l'ensembles des communications avec Jitsi.

On supprime ensuite ... (Maxime doit changer la description)

Nous copions ensuite notre **startup.sh** puis le lançons.


  ![logo de Docker](./img/logo_docker.png)

### Jitsi
 
La visioconférence ou vidéo conférence est utile pour le télétravail et s’est popularisé avec la COVID-19.  Pour notre projet, nous avons opté pour de la visioconférence, car nous avons voulu un projet original, utile et assez complexe pour travailler.

Durant nos recherches, nous sommes tombés sur plusieurs applications open source, de visioconférences tels que :
-	Apache OpenMeeting
-	Element 
-	Jami
-	Jitsi.

Nous avons choisi Jitsi pour son interface, et car c'est l'une des rares application gratuite, open source et auto hébergé. Nous avons donc décidé de le choisir pour Docker

Voici une représentation de l'interface Jitsi        





![Interface Jitsi](./img/img_interface_jitsi.png)             

### GitHub Pages

![Logo de GitHub](./img/logo_github.png)

GitHub pages est un outil permettant de créer un site internet de manière plus simple que du HTML/CSS/JS afin de présenter un projet. On a le choix parmi plusieurs Template qui vont nous servir de base comme squelette du site internet.

Le HTML version GitHub, se créer avec des balises qui ont des formes différentes. Notamment en mettant des mots entre certains caractères comme les dièses, apostrophe, etc. Qui permettent de mettre en forme le texte de la manière qu’on le souhaite. 

### Conclusion

Grâce à ce projet, nous avons pu découvrir l’utilité et le fonctionnement de Docker en passant par le terminal ou bien par Docker for Desktop. Nous avons réussi a héberger un logiciel de visioconférence de manière stable. Et nous nous sommes organisés afin de travailler en équipe efficacement. 
