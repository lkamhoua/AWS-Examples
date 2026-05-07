#!/usr/bin/env bash

# 1. Installer les prérequis
sudo apt update
sudo apt install -y gnupg software-properties-common curl ca-certificates vim

# 2. Télécharger et ajouter la clé GPG de HashiCorp
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# 3. Ajouter le dépôt HashiCorp à APT
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
  | sudo tee /etc/apt/sources.list.d/hashicorp.list

# 4. Mettre à jour la base de paquets puis installer Terraform
sudo apt update
sudo apt install -y terraform

# 5. Vérifier que Terraform est bien installé
terraform -version