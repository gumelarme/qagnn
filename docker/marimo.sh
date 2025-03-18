#!/bin/bash

# Ensure the default Python used by Marimo is our venv
# Token not specified because auth is handled through Caddy
[[ -f "${WORKSPACE}/venv/main/bin/activate" ]] && . "${WORKSPACE}/venv/main/bin/activate" || . /venv/main/bin/activate
marimo 	edit \
	      --host 127.0.0.1 \
	      --headless \
	      --port 12718 \
        --no-token \
	      --token-password ''
