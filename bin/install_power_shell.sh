#!/usr/bin/env bash

# Positionnement dans le workspace
cd /workspaces

# Mettre à jour
sudo apt-get update

# Installer les dépendances
sudo apt-get install -y wget apt-transport-https software-properties-common

# Télécharger le package Microsoft
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb

# Enregistrer le dépôt
sudo dpkg -i packages-microsoft-prod.deb

# Suppression du package
rm packages-microsoft-prod.deb

# Mettre à jour les sources
sudo apt-get update

# Installer PowerShell
sudo apt-get install -y powershell

# Positionnement dans l'espace de travail
cd $CODESPACE_VSCODE_FOLDER

# Lancer Powershell
# pwsh

# Installer les tools AWS pour Powershell
# Install-Module -Name AWS.Tools.Installer

# Installer les modules AWS pour Powershell
# Install-AWSToolsModule AWS.Tools.EC2,AWS.Tools.S3 -CleanUp

# Documentations :
# https://docs.aws.amazon.com/powershell/