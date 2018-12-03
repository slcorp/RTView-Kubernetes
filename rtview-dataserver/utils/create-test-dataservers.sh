#!/usr/bin/env bash

CWD=$(dirname $0)
chartDir="${CWD}/../chart/"

deploy() {
  helm upgrade $1 "$chartDir" \
    --wait \
    --install \
    -f "${CWD}/$1-domain.yaml"
}

deploy iot-ds-history
deploy kafka-ds-history
deploy iot-ds-wo-history
deploy kafka-ds-wo-history
