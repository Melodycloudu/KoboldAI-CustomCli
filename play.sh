#!/bin/bash
if [ ! -f "runtime/envs/koboldai/bin/python" ]; then
./install_requirements.sh cuda
fi
bin/micromamba run -r runtime -n koboldai python aiserver.py $*
from pyngrok import ngrok
public_url = ngrok.connect(5000)
print(public_url)
