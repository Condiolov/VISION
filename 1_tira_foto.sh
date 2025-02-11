#!/bin/bash

pasta_imagens="/sdcard/DCIM/Camera"
# abre a camera nativa do celular
adb shell am start -n com.android.camera/com.android.camera.Camera

sleep 4

adb shell input tap 530 2000

sleep 2
adb shell am force-stop com.android.camera

# home
#adb shell input keyevent 3

# off
#adb shell input keyevent 26

# desbloqueio de tela
#adb shell input keyevent 82

ultima_foto=$(adb shell ls -t $pasta_imagens | head -n 1)

adb pull "$pasta_imagens/$ultima_foto" "./"

convert $ultima_foto -quality 30 output_image.jpg
# convert "$ultima_foto" -resize 800x600 -quality 30 output_image.jpg
