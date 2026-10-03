#!/usr/bin/env bash

sudo dnf install -y git

if [ -e "$HOME/.FedoraENV" ]; then
	echo "Already instlled"
else
	git clone https://github.com/sunbox-sudo/FedoraENV.git "$HOME/.FedoraENV"
fi

mkdir -p "$HOME/.local/bin"
ln -sf "$HOME/.FedoraENV/fedora-env" "$HOME/.local/bin/fedora-env"
