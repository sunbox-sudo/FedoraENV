#!/usr/bin/env bash

sudo dnf install -y git

git clone https://github.com/sunbox-sudo/FedoraENV.git "$HOME/.FedoraENV"

mkdir -p "$HOME/.local/bin"
ln -sf "$HOME/.FedoraENV/fedora-env" "$HOME/.local/bin/fedora-env"
