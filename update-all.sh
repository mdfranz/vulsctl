#!/bin/sh

export DOCKER_ARGS="--rm "

./oval.sh --redhat && \
./oval.sh --amazon && \
./oval.sh --debian && \
./oval.sh --ubuntu && \
./oval.sh --alpine && \
./gost.sh --redhat && \
./gost.sh --debian && \
./cvedb.sh && \
./exploitdb.sh

