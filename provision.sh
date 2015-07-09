#!/usr/bin/env bash

sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

function say {
    printf "\n--------------------------------------------------------\n"
    printf "\t$1"
    printf "\n--------------------------------------------------------\n"
}

say "Provision"

say "Installing handy packages"
	apt-get install -y curl python-software-properties

say "Installing Git"
	add-apt-repository ppa:git-core/ppa
	apt-get update
	apt-get install -y git

say "Install build-essential"
	apt-get update
	sudo apt-get install -y build-essential --no-install-recommends

say "Install nodejs"
	apt-get update
	curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
	sudo apt-get install -y nodejs
