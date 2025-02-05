FROM ubuntu:24.04

RUN --mount=type=bind,source=requirements.txt,target=requirements.txt <<EOF

    set -ex

    apt update

    apt --yes --no-install-recommends install $(grep -vE "^\s*#" requirements.txt  | tr "\n" " ")

    rm -rf /var/lib/apt/lists/* 

EOF
