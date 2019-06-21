#!/bin/sh

export BIN_DIR=`dirname $0`
export PROJECT_ROOT=`readlink -f "${BIN_DIR}/.."`
. "${PROJECT_ROOT}/bin/common.sh"

cd "${PROJECT_ROOT}"
for service in $SERVICES; do
  echo "${service}"
  git clone https://github.com/fisean/$service
done
