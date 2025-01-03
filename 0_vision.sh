#!/bin/bash

bash 1_tira_foto.sh
conda activate ollama
python 2_descreve_imagem.py
sleep 2
adb push "output.wav" /sdcard/Music/output.wav
sleep 2

# comando de abrir o player audio e executar o audio
adb shell am start -a android.intent.action.VIEW -d file:///sdcard/Music/output.wav -t audio/wav

# Pausa para fechar do tamanho de duração do audio
sleep $(echo "scale=2;$(ffprobe -i output.wav -show_entries format=duration -v quiet -of csv="p=0") + 2 " | bc)

#força o fechamento do player de audio
adb shell am force-stop com.android.music