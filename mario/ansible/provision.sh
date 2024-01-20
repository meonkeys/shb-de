#!/bin/bash

# provision.sh - mario system provisioner
# Copyright (C) 2023-2024  Adam Monsen
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

set -o errexit
set -o nounset
set -o pipefail

DIR="$( builtin cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

aprun="$(which ansible-playbook)" || true

if [[ -z "$aprun" ]]
then
    echo "ERROR: Ansible not installed or not found in path."
    exit 1
fi

myConfig="$DIR/config"

if ! [[ -r $myConfig ]]
then
    echo "You don't have a config file. I'll create one for you now."
    echo
    echo "Please edit '$myConfig' and re-run this script."
    cp "$DIR/template/config" "$myConfig"
    chmod 600 "$myConfig"
    exit 1
fi

myInventory="$DIR/hosts.yml"

if ! [[ -r $myInventory ]]
then
    echo "You don't have an Ansible inventory file. I'll create one for you now."
    echo
    echo "Please edit $myInventory and re-run this script."
    cp "$DIR/template/hosts.yml" "$myInventory"
    chmod 600 "$myInventory"
    exit 1
fi

if ! ssh -o BatchMode=yes mario_server true
then
    echo "Error: unable to SSH to the server in batch mode."
    echo
    echo "Please fix your SSH client config and try again."
    echo "See the documentation for more details."
    exit 1
fi

# shellcheck disable=SC1090
source "$myConfig"

set -x

$aprun playbook.yml
