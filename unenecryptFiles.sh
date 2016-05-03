#!/bin/bash
set -o pipefail
set -o nounset
set -o errexit

IFS=$'\n'
DIR="$(cd "$(dirname "$0")"; pwd)"

for FILE in $(find "${DIR}" -name '*.gpg'); do
    gpg --use-agent --decrypt 1> "${FILE%.gpg}" 2> /dev/null <"$FILE"
done
