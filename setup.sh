#!/usr/bin/env bash

# Due to the nature of this shell script/exercise, I've avoided handling
# the race condition where two instances of this script can be run at the same
# time. A lock file could be used to solve the issue.

# We could add more niceties to the script such as adding more customization
# options, but for now I've only made the github username flag configurable
# while defaulting to my specific username

# We are assuming that the /root dir exists

ROOT_BASH_PROFILE="/root/.bash_profile"
HOSTNAME_REPLACEMENT="vault-server.hashicorp.com"
CONFIG_FILE=config.hcl
GITHUB_USER=flamacue

usage () {
	echo "\
	USAGE: setup.sh [-u github_username]
		-h              	# this usage message
		-u github_username	# explicitly set github username"
	exit
}

set_github_username () {
	# check if GITHUB_USERNAME exists in the file
	if sudo grep "export GITHUB_USERNAME=" $ROOT_BASH_PROFILE > /dev/null 2>&1; then
		# Use a subshell to eliminate permission issue with redirects
		# Not using in place sed edit due to cross platform compatibility issues
		sudo sh -c "sed -e 's/GITHUB_USERNAME=.*/GITHUB_USERNAME=$1/' $ROOT_BASH_PROFILE > $ROOT_BASH_PROFILE.new"
		sudo mv "$ROOT_BASH_PROFILE".new $ROOT_BASH_PROFILE
	else
		# Append the line to the file/create file if it doesn't exist
		echo "export GITHUB_USERNAME=$1" | sudo tee -a $ROOT_BASH_PROFILE > /dev/null 2>&1
	fi

}

write_code_to_config () {
	echo "Writing code to $CONFIG_FILE ..."
	echo "\
cluster_addr  = \"https://<HOSTNAME>:8201\"
api_addr      = \"https://<HOSTNAME>:8200\"
disable_mlock = true" > $CONFIG_FILE
}

replace_hostname_in_config () {
	echo "Replacing <HOSTNAME> in $CONFIG_FILE with $HOSTNAME_REPLACEMENT ..."
	sed -e "s/<HOSTNAME>/$HOSTNAME_REPLACEMENT/" $CONFIG_FILE > "$CONFIG_FILE".new
	mv "$CONFIG_FILE".new $CONFIG_FILE

}

while getopts "hu:" opt; do
	case $opt in
		u)
			GITHUB_USER=$OPTARG
			;;
		h)
			usage
			;;
		*)
			exit 1
			;;
	esac
done

set_github_username "$GITHUB_USER"
write_code_to_config
replace_hostname_in_config

exit 0
