# Cheatsheet - Commandes utiles

Pense-bête des commandes Linux/macOS pratiques.

## Infos système

| Commande | Description |
|----------|-------------|
| `whoami` | Utilisateur courant |
| `hostname` | Nom de la machine |
| `uname -a` | Infos système (kernel, architecture) |
| `cat /etc/os-release` | Distribution Linux |
| `uptime` | Temps depuis le dernier redémarrage |
| `df -h` | Espace disque disponible |
| `du -sh *` | Taille de chaque dossier/fichier |
| `free -m` | Mémoire RAM et swap |
| `lscpu` | Infos processeur |

## Navigation & fichiers

| Commande | Description |
|----------|-------------|
| `pwd` | Répertoire courant |
| `ls -la` | Lister tout (fichiers cachés inclus) |
| `tree -L 2` | Arborescence sur 2 niveaux |
| `find . -name "*.log"` | Chercher des fichiers par nom |
| `locate fichier` | Recherche rapide (index) |
| `wc -l fichier` | Compter les lignes d'un fichier |
| `stat fichier` | Infos détaillées (taille, permissions, dates) |
| `file fichier` | Type de fichier |

## Texte & recherche

| Commande | Description |
|----------|-------------|
| `grep -r "motif" .` | Chercher du texte récursivement |
| `grep -i "motif" fichier` | Recherche insensible à la casse |
| `sed 's/ancien/nouveau/g' fichier` | Remplacer du texte |
| `awk '{print $1}' fichier` | Extraire la 1ère colonne |
| `sort fichier` | Trier les lignes |
| `uniq` | Supprimer les doublons (après sort) |
| `cut -d',' -f1 fichier.csv` | Extraire une colonne CSV |
| `diff fichier1 fichier2` | Comparer deux fichiers |

## Historique & shell

| Commande | Description |
|----------|-------------|
| `history` | Historique des commandes |
| `history \| grep "mot"` | Chercher dans l'historique |
| `!!` | Relancer la dernière commande |
| `!$` | Dernier argument de la commande précédente |
| `ctrl+r` | Recherche inversée dans l'historique |
| `alias` | Lister tous les alias actifs |
| `type commande` | Savoir si c'est un alias, builtin ou binaire |
| `which commande` | Chemin du binaire |

## Date & calendrier

| Commande | Description |
|----------|-------------|
| `date` | Date et heure courante |
| `date +"%Y-%m-%d"` | Date formatée (2026-02-13) |
| `date +"%A, %B %d, %Y %T"` | Date lisible complète |
| `cal` | Calendrier du mois courant |
| `cal 2026` | Calendrier de l'année |
| `cal -3` | Mois précédent + courant + suivant |

## Réseau

| Commande | Description |
|----------|-------------|
| `ip addr` / `ifconfig` | Adresses IP locales |
| `curl ifconfig.me` | IP publique |
| `ping -c 5 google.com` | Tester la connectivité |
| `traceroute google.com` | Tracer la route réseau |
| `ss -tulanp` / `netstat -tulanp` | Ports ouverts |
| `nslookup domaine.com` | Résolution DNS |
| `dig domaine.com` | Infos DNS détaillées |
| `curl -I https://example.com` | Headers HTTP d'un site |

## Processus

| Commande | Description |
|----------|-------------|
| `ps aux` | Tous les processus |
| `ps aux \| grep nom` | Chercher un processus |
| `top` / `htop` | Moniteur temps réel |
| `kill PID` | Terminer un processus |
| `kill -9 PID` | Forcer l'arrêt |
| `jobs` | Tâches en arrière-plan |
| `bg` / `fg` | Reprendre une tâche en background/foreground |
| `nohup commande &` | Lancer un processus détaché du terminal |

## Archives & compression

| Commande | Description |
|----------|-------------|
| `tar czf archive.tar.gz dossier/` | Créer une archive .tar.gz |
| `tar xzf archive.tar.gz` | Extraire une archive .tar.gz |
| `tar xjf archive.tar.bz2` | Extraire une archive .tar.bz2 |
| `zip -r archive.zip dossier/` | Créer un .zip |
| `unzip archive.zip` | Extraire un .zip |
| `gzip fichier` | Compresser un fichier |
| `gunzip fichier.gz` | Décompresser |

## SSH & transfert

| Commande | Description |
|----------|-------------|
| `ssh user@host` | Connexion SSH |
| `ssh -X user@host` | SSH avec forwarding graphique |
| `scp fichier user@host:/path` | Copier vers un serveur |
| `scp -r dossier/ user@host:/path` | Copier un dossier |
| `rsync -avz src/ user@host:/dest/` | Synchroniser avec compression |
| `ssh-keygen -t ed25519` | Générer une clé SSH |
| `ssh-copy-id user@host` | Copier sa clé publique |

## Permissions

| Commande | Description |
|----------|-------------|
| `chmod +x script.sh` | Rendre exécutable |
| `chmod 755 fichier` | rwxr-xr-x |
| `chmod 600 fichier` | rw------- (privé) |
| `chown user:group fichier` | Changer le propriétaire |
| `sudo !!` | Relancer la dernière commande en root |

## Docker

| Commande | Description |
|----------|-------------|
| `docker ps` | Conteneurs en cours |
| `docker ps -a` | Tous les conteneurs (y compris arrêtés) |
| `docker images` | Lister les images locales |
| `docker pull image:tag` | Télécharger une image |
| `docker build -t nom .` | Construire une image depuis un Dockerfile |
| `docker run -it --rm image` | Lancer un conteneur interactif (supprimé à l'arrêt) |
| `docker run -d -p 8080:80 image` | Lancer en arrière-plan avec port mapping |
| `docker exec -it conteneur bash` | Ouvrir un shell dans un conteneur |
| `docker logs -f conteneur` | Suivre les logs en temps réel |
| `docker stop conteneur` | Arrêter un conteneur |
| `docker rm conteneur` | Supprimer un conteneur |
| `docker rmi image` | Supprimer une image |
| `docker system prune -a` | Nettoyer tout (conteneurs, images, volumes inutilisés) |
| `docker volume ls` | Lister les volumes |
| `docker network ls` | Lister les réseaux |

### Docker Compose

| Commande | Description |
|----------|-------------|
| `docker compose up -d` | Démarrer les services en arrière-plan |
| `docker compose down` | Arrêter et supprimer les services |
| `docker compose ps` | État des services |
| `docker compose logs -f` | Suivre les logs de tous les services |
| `docker compose build` | Reconstruire les images |
| `docker compose exec service bash` | Shell dans un service |
| `docker compose pull` | Mettre à jour les images |
| `docker compose restart` | Redémarrer les services |

## Terraform

| Commande | Description |
|----------|-------------|
| `terraform init` | Initialiser le répertoire (télécharger les providers) |
| `terraform plan` | Prévisualiser les changements |
| `terraform apply` | Appliquer les changements |
| `terraform apply -auto-approve` | Appliquer sans confirmation |
| `terraform destroy` | Détruire toute l'infrastructure |
| `terraform validate` | Valider la syntaxe des fichiers .tf |
| `terraform fmt` | Formatter les fichiers .tf |
| `terraform fmt -recursive` | Formatter récursivement |
| `terraform output` | Afficher les outputs |
| `terraform output -json` | Outputs en JSON |
| `terraform show` | Afficher l'état courant |
| `terraform state list` | Lister les ressources dans le state |
| `terraform state show resource` | Détails d'une ressource |
| `terraform import addr id` | Importer une ressource existante |
| `terraform taint resource` | Marquer pour recréation |
| `terraform untaint resource` | Annuler un taint |
| `terraform refresh` | Synchroniser le state avec le réel |
| `terraform console` | Console interactive (tester des expressions) |
| `terraform graph \| dot -Tpng > graph.png` | Générer un graphe visuel |

### Terraform Workspaces

| Commande | Description |
|----------|-------------|
| `terraform workspace list` | Lister les workspaces |
| `terraform workspace new dev` | Créer un workspace |
| `terraform workspace select dev` | Changer de workspace |
| `terraform workspace delete dev` | Supprimer un workspace |

### Terraform bonnes pratiques

```bash
# Workflow classique
terraform init
terraform fmt -recursive
terraform validate
terraform plan -out=tfplan
terraform apply tfplan

# Cibler une ressource spécifique
terraform plan -target=aws_instance.web
terraform apply -target=aws_instance.web

# Verrouiller les versions des providers
terraform providers lock -platform=linux_amd64
```
