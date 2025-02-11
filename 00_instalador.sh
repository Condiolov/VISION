#!/bin/bash

curl -fsSL https://ollama.com/install.sh | sh
ollama run llama3.2-vision
sudo apt install adb -y

conda create -n ollama python=3.10 -y
conda activate ollama
pip install ollama

# wget https://github.com/rhasspy/piper/releases/download/v1.2.0/piper_amd64.tar.gz
# tar -xvzf piper_amd64.tar.gz

pip install piper-tts
pip install playsound

wget -P ./model_voice https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/pt/pt_BR/faber/medium/pt_BR-faber-medium.onnx

wget -P ./model_voice https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/pt/pt_BR/faber/medium/pt_BR-faber-medium.onnx.json
