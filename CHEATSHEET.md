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

## Kubernetes (kubectl)

| Commande | Description |
|----------|-------------|
| `kubectl cluster-info` | Infos du cluster |
| `kubectl get nodes` | Lister les nœuds |
| `kubectl get pods` | Pods du namespace courant |
| `kubectl get pods -A` | Pods de tous les namespaces |
| `kubectl get svc` | Lister les services |
| `kubectl get deploy` | Lister les déploiements |
| `kubectl get ingress` | Lister les ingress |
| `kubectl get ns` | Lister les namespaces |
| `kubectl get all` | Toutes les ressources du namespace |
| `kubectl describe pod nom` | Détails d'un pod |
| `kubectl logs pod` | Logs d'un pod |
| `kubectl logs -f pod` | Suivre les logs en temps réel |
| `kubectl logs pod -c conteneur` | Logs d'un conteneur spécifique |
| `kubectl exec -it pod -- bash` | Shell dans un pod |
| `kubectl port-forward pod 8080:80` | Rediriger un port local vers un pod |
| `kubectl port-forward svc/nom 8080:80` | Rediriger vers un service |
| `kubectl apply -f fichier.yaml` | Appliquer une configuration |
| `kubectl delete -f fichier.yaml` | Supprimer une configuration |
| `kubectl delete pod nom` | Supprimer un pod |
| `kubectl scale deploy nom --replicas=3` | Scaler un déploiement |
| `kubectl rollout status deploy/nom` | Statut du rollout |
| `kubectl rollout undo deploy/nom` | Rollback du déploiement |
| `kubectl rollout history deploy/nom` | Historique des rollouts |
| `kubectl top pods` | Consommation CPU/mémoire des pods |
| `kubectl top nodes` | Consommation CPU/mémoire des nœuds |

### Contexte & namespace

| Commande | Description |
|----------|-------------|
| `kubectl config get-contexts` | Lister les contextes |
| `kubectl config current-context` | Contexte actif |
| `kubectl config use-context nom` | Changer de contexte (cluster) |
| `kubectl config set-context --current --namespace=nom` | Changer le namespace par défaut |

### Création rapide

| Commande | Description |
|----------|-------------|
| `kubectl create ns mon-ns` | Créer un namespace |
| `kubectl create deploy nom --image=nginx` | Créer un déploiement |
| `kubectl expose deploy nom --port=80 --type=NodePort` | Exposer un déploiement |
| `kubectl run debug --image=busybox -it --rm -- sh` | Pod temporaire de debug |

### Debugging

| Commande | Description |
|----------|-------------|
| `kubectl get events --sort-by=.metadata.creationTimestamp` | Événements triés par date |
| `kubectl describe node nom` | Détails d'un nœud (capacité, conditions) |
| `kubectl get pod nom -o yaml` | Config complète d'un pod en YAML |
| `kubectl diff -f fichier.yaml` | Diff avant apply |
| `kubectl auth can-i create pods` | Vérifier ses permissions |

### Helm (gestionnaire de packages K8s)

| Commande | Description |
|----------|-------------|
| `helm repo add nom url` | Ajouter un repo de charts |
| `helm repo update` | Mettre à jour les repos |
| `helm search repo mot` | Chercher un chart |
| `helm install release chart` | Installer un chart |
| `helm upgrade release chart` | Mettre à jour une release |
| `helm uninstall release` | Désinstaller une release |
| `helm list` | Lister les releases installées |
| `helm status release` | Statut d'une release |
| `helm values chart` | Voir les valeurs par défaut |

## Ansible

| Commande | Description |
|----------|-------------|
| `ansible --version` | Version et config d'Ansible |
| `ansible all -m ping` | Tester la connectivité de tous les hôtes |
| `ansible all -m setup` | Collecter les facts de tous les hôtes |
| `ansible all -a "uptime"` | Exécuter une commande sur tous les hôtes |
| `ansible groupe -a "df -h"` | Exécuter une commande sur un groupe |
| `ansible all -m copy -a "src=f dest=/tmp/f"` | Copier un fichier vers les hôtes |
| `ansible all -m apt -a "name=nginx state=present" -b` | Installer un paquet (become root) |
| `ansible all -m service -a "name=nginx state=started" -b` | Démarrer un service |
| `ansible-inventory --list` | Lister l'inventaire en JSON |
| `ansible-inventory --graph` | Afficher l'inventaire en arbre |

### Playbooks

| Commande | Description |
|----------|-------------|
| `ansible-playbook playbook.yml` | Exécuter un playbook |
| `ansible-playbook playbook.yml -i inventaire` | Avec un inventaire spécifique |
| `ansible-playbook playbook.yml -l groupe` | Limiter à un groupe/hôte |
| `ansible-playbook playbook.yml --tags "tag1,tag2"` | Exécuter uniquement certains tags |
| `ansible-playbook playbook.yml --skip-tags "tag"` | Ignorer certains tags |
| `ansible-playbook playbook.yml --check` | Dry run (ne change rien) |
| `ansible-playbook playbook.yml --diff` | Afficher les différences |
| `ansible-playbook playbook.yml --check --diff` | Dry run avec diff |
| `ansible-playbook playbook.yml -e "var=valeur"` | Passer des variables |
| `ansible-playbook playbook.yml --start-at-task="nom"` | Reprendre à une tâche |
| `ansible-playbook playbook.yml --step` | Exécuter tâche par tâche (confirmation) |
| `ansible-playbook playbook.yml -v` | Verbose (-vv, -vvv pour plus) |

### Ansible Vault

| Commande | Description |
|----------|-------------|
| `ansible-vault create secret.yml` | Créer un fichier chiffré |
| `ansible-vault edit secret.yml` | Éditer un fichier chiffré |
| `ansible-vault view secret.yml` | Lire un fichier chiffré |
| `ansible-vault encrypt fichier.yml` | Chiffrer un fichier existant |
| `ansible-vault decrypt fichier.yml` | Déchiffrer un fichier |
| `ansible-vault rekey fichier.yml` | Changer le mot de passe |
| `ansible-playbook playbook.yml --ask-vault-pass` | Exécuter avec vault (prompt) |
| `ansible-playbook playbook.yml --vault-password-file=f` | Exécuter avec fichier de mot de passe |

### Ansible Galaxy

| Commande | Description |
|----------|-------------|
| `ansible-galaxy init mon_role` | Créer la structure d'un rôle |
| `ansible-galaxy install nom_role` | Installer un rôle depuis Galaxy |
| `ansible-galaxy install -r requirements.yml` | Installer les rôles depuis un fichier |
| `ansible-galaxy list` | Lister les rôles installés |
| `ansible-galaxy collection install ns.collection` | Installer une collection |

## SOPS (Secrets OPerationS)

| Commande | Description |
|----------|-------------|
| `sops fichier.yaml` | Éditer un fichier chiffré (ouvre l'éditeur) |
| `sops -e fichier.yaml` | Chiffrer un fichier (encrypt) |
| `sops -d fichier.yaml` | Déchiffrer un fichier (decrypt) |
| `sops -d fichier.yaml > clair.yaml` | Déchiffrer vers un nouveau fichier |
| `sops -i -e fichier.yaml` | Chiffrer en place (in-place) |
| `sops -i -d fichier.yaml` | Déchiffrer en place |
| `sops -r fichier.yaml` | Rotation des clés de chiffrement |
| `sops updatekeys fichier.yaml` | Mettre à jour les clés selon .sops.yaml |

### Chiffrement partiel (encrypted_regex)

| Commande | Description |
|----------|-------------|
| `sops -e --encrypted-regex '^(password\|secret)$' f.yaml` | Chiffrer uniquement certaines clés |
| `sops -e --unencrypted-regex '^(metadata\|kind)$' f.yaml` | Tout chiffrer sauf certaines clés |

### Backends de clés

| Commande | Description |
|----------|-------------|
| `sops -e --age age1... fichier.yaml` | Chiffrer avec une clé age |
| `sops -e --pgp FINGERPRINT fichier.yaml` | Chiffrer avec une clé PGP |
| `sops -e --kms arn:aws:kms:... fichier.yaml` | Chiffrer avec AWS KMS |
| `sops -e --gcp-kms projects/.../keys/... fichier.yaml` | Chiffrer avec GCP KMS |
| `sops -e --azure-kv https://vault... fichier.yaml` | Chiffrer avec Azure Key Vault |

### Configuration (.sops.yaml)

```yaml
# .sops.yaml - à la racine du projet
creation_rules:
  # Chiffrer les secrets avec age
  - path_regex: secrets/.*\.yaml$
    age: age1ql3z7hjy54pw3hyww5ayyfg7zqgvc7w3j2elw8zmrj2kg5sfn9aqmcac8p

  # Chiffrer avec AWS KMS pour la prod
  - path_regex: prod/.*\.yaml$
    kms: arn:aws:kms:eu-west-1:123456789:key/abcd-1234

  # Chiffrer seulement les valeurs sensibles
  - path_regex: config/.*\.yaml$
    encrypted_regex: ^(password|token|secret|key)$
    age: age1...
```

### Utilisation avec Kubernetes / Helm

```bash
# Déchiffrer et appliquer un secret K8s
sops -d secret.yaml | kubectl apply -f -

# Avec helm-secrets (plugin Helm)
helm plugin install https://github.com/jkroepke/helm-secrets
helm secrets upgrade release chart -f secrets.yaml
```

## HashiCorp Vault

| Commande | Description |
|----------|-------------|
| `vault version` | Version de Vault |
| `vault status` | Statut du serveur (sealed/unsealed) |
| `vault login` | Se connecter (token prompt) |
| `vault login -method=ldap username=user` | Login via LDAP |
| `vault login -method=oidc` | Login via OIDC/SSO |
| `vault token lookup` | Infos sur le token courant |
| `vault token renew` | Renouveler le token courant |

### Secrets KV (Key-Value)

| Commande | Description |
|----------|-------------|
| `vault kv put secret/app/db password=abc123` | Écrire un secret (KV v2) |
| `vault kv get secret/app/db` | Lire un secret |
| `vault kv get -field=password secret/app/db` | Lire un champ spécifique |
| `vault kv get -format=json secret/app/db` | Lire en JSON |
| `vault kv list secret/app` | Lister les secrets d'un chemin |
| `vault kv delete secret/app/db` | Supprimer un secret |
| `vault kv undelete -versions=1 secret/app/db` | Restaurer une version supprimée |
| `vault kv metadata get secret/app/db` | Métadonnées (versions, dates) |
| `vault kv rollback -version=2 secret/app/db` | Rollback à une version |

### Secrets engines

| Commande | Description |
|----------|-------------|
| `vault secrets list` | Lister les engines activés |
| `vault secrets enable -path=myapp kv-v2` | Activer un engine KV v2 |
| `vault secrets enable aws` | Activer l'engine AWS |
| `vault secrets enable database` | Activer l'engine database |
| `vault secrets disable myapp/` | Désactiver un engine |

### Policies

| Commande | Description |
|----------|-------------|
| `vault policy list` | Lister les policies |
| `vault policy read nom` | Lire une policy |
| `vault policy write nom policy.hcl` | Créer/mettre à jour une policy |
| `vault policy delete nom` | Supprimer une policy |

### Auth methods

| Commande | Description |
|----------|-------------|
| `vault auth list` | Lister les méthodes d'auth |
| `vault auth enable approle` | Activer AppRole |
| `vault auth enable kubernetes` | Activer l'auth Kubernetes |
| `vault auth enable ldap` | Activer l'auth LDAP |
| `vault auth disable ldap/` | Désactiver une méthode |

### Credentials dynamiques

```bash
# AWS - générer des credentials temporaires
vault read aws/creds/mon-role

# Database - générer un user/password temporaire
vault read database/creds/mon-role

# PKI - générer un certificat TLS
vault write pki/issue/mon-role common_name=app.example.com
```

### Opérations serveur

| Commande | Description |
|----------|-------------|
| `vault operator init` | Initialiser Vault (génère les clés unseal) |
| `vault operator unseal` | Unsealer (à répéter avec chaque clé) |
| `vault operator seal` | Sealer Vault (urgence) |
| `vault operator raft list-peers` | Lister les nœuds du cluster (Raft) |
| `vault lease revoke -prefix aws/creds/` | Révoquer tous les leases d'un chemin |
| `vault audit enable file file_path=/var/log/vault.log` | Activer l'audit log |

### Variables d'environnement

```bash
export VAULT_ADDR="https://vault.example.com:8200"
export VAULT_TOKEN="hvs.xxxxxxxxxxxxx"
export VAULT_NAMESPACE="admin"           # Enterprise
export VAULT_SKIP_VERIFY=true            # Dev uniquement
```

## Pipes & redirections shell

### Redirections de base

| Syntaxe | Description |
|---------|-------------|
| `cmd > fichier` | Rediriger stdout vers un fichier (écrase) |
| `cmd >> fichier` | Rediriger stdout (ajoute à la fin) |
| `cmd 2> fichier` | Rediriger stderr vers un fichier |
| `cmd 2>> fichier` | Rediriger stderr (ajoute à la fin) |
| `cmd &> fichier` | Rediriger stdout + stderr vers un fichier |
| `cmd &>> fichier` | Rediriger stdout + stderr (ajoute) |
| `cmd 2>&1` | Rediriger stderr vers stdout |
| `cmd 1>&2` | Rediriger stdout vers stderr |
| `cmd < fichier` | Lire stdin depuis un fichier |
| `cmd > /dev/null` | Supprimer la sortie (silencieux) |
| `cmd > /dev/null 2>&1` | Supprimer toute sortie (stdout + stderr) |

### Pipes

| Syntaxe | Description |
|---------|-------------|
| `cmd1 \| cmd2` | Envoyer stdout de cmd1 vers stdin de cmd2 |
| `cmd1 \|& cmd2` | Envoyer stdout + stderr vers cmd2 |
| `cmd \| tee fichier` | Afficher ET écrire dans un fichier |
| `cmd \| tee -a fichier` | Afficher ET ajouter au fichier |

### Exemples pratiques avec pipe

```bash
# Compter les fichiers dans un dossier
ls -1 | wc -l

# Chercher et trier les processus par mémoire
ps aux | sort -k4 -rn | head -10

# Extraire les IPs uniques d'un log
cat access.log | awk '{print $1}' | sort | uniq -c | sort -rn

# Chercher du texte et afficher avec contexte
cat fichier.log | grep -C 3 "ERROR"

# Remplacer du texte à la volée
cat config.ini | sed 's/localhost/192.168.1.10/g' > config_new.ini

# Lister les 10 plus gros fichiers
du -ah /var | sort -rh | head -10

# Filtrer les colonnes d'un CSV
cat data.csv | cut -d',' -f1,3 | sort

# Compter les occurrences d'un mot
cat fichier | tr ' ' '\n' | grep -c "mot"

# Surveiller un log en temps réel avec filtre
tail -f /var/log/syslog | grep --line-buffered "error"

# Lister les ports en écoute avec le nom du processus
ss -tulanp | grep LISTEN | awk '{print $5, $7}'
```

### Here document (heredoc)

```bash
# Écrire plusieurs lignes dans un fichier
cat << 'EOF' > fichier.txt
Ligne 1
Ligne 2 avec $variable non interprétée
EOF

# Avec interprétation des variables
cat << EOF > fichier.txt
Bonjour $USER
Date: $(date)
EOF

# Passer du texte à une commande
mysql -u root << EOF
CREATE DATABASE mydb;
GRANT ALL ON mydb.* TO 'user'@'localhost';
EOF
```

### Here string

```bash
# Passer une chaîne à stdin
grep "motif" <<< "texte à chercher"

# Encoder en base64
base64 <<< "mon secret"

# Compter les mots
wc -w <<< "un deux trois"
```

### Chaînage de commandes

| Syntaxe | Description |
|---------|-------------|
| `cmd1 && cmd2` | Exécuter cmd2 seulement si cmd1 réussit |
| `cmd1 \|\| cmd2` | Exécuter cmd2 seulement si cmd1 échoue |
| `cmd1 ; cmd2` | Exécuter cmd2 quoi qu'il arrive |
| `(cmd1 ; cmd2)` | Exécuter dans un sous-shell |
| `{ cmd1 ; cmd2 ; }` | Grouper sans sous-shell |

### Process substitution

```bash
# Comparer la sortie de deux commandes
diff <(ls dir1) <(ls dir2)

# Utiliser la sortie d'une commande comme fichier
while read line; do echo "$line"; done < <(curl -s https://example.com)
```

### xargs (construire des commandes depuis stdin)

```bash
# Supprimer les fichiers trouvés
find . -name "*.tmp" | xargs rm

# Avec gestion des espaces dans les noms
find . -name "*.log" -print0 | xargs -0 rm

# Exécuter en parallèle (4 processus)
cat urls.txt | xargs -P 4 -I {} curl -s {}

# Passer chaque ligne comme argument
cat hosts.txt | xargs -I {} ssh {} "uptime"
```
