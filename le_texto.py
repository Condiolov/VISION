import sys
import wave
from piper.voice import PiperVoice
from playsound import playsound

model = "./model_voice/pt_BR-faber-medium.onnx"
voice = PiperVoice.load(model)


# Verifica se o texto foi passado como argumento
if len(sys.argv) < 2:
    wav_file = wave.open("output.wav", "w")
    audio = voice.synthesize("Por favor, forneça o texto como argumento.", wav_file)
    playsound('output.wav')
    print("Por favor, forneça o texto como argumento.")
    sys.exit(1)

# O texto é o argumento passado
text = ' '.join(sys.argv[1:])

# Criar o arquivo de áudio WAV
wav_file = wave.open("output.wav", "w")
audio = voice.synthesize(text, wav_file)

# Reproduzir o áudio com o VLC
playsound('output.wav')
