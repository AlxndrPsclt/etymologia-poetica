#!/usr/bin/env bash

eval "$(ssh-agent -s)"
ssh-add /root/.ssh/id_rsa

python -m pelican.server
