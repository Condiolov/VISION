import os
import ollama
import sys
import wave
from piper.voice import PiperVoice

model = "model_voice/pt_BR-faber-medium.onnx"
voice = PiperVoice.load(model)
# Caminho para o diretório onde as imagens estão armazenadas
image_dir = './'

# Listar arquivos .jpg no diretório, ordenados pela data de modificação (do mais recente para o mais antigo)
images = [f for f in os.listdir(image_dir) if f.endswith('.jpg')]
latest_image = max(images, key=lambda f: os.path.getmtime(os.path.join(image_dir, f)))

# Usar a última imagem com o modelo llama3.2-vision
response = ollama.chat(
    model='llama3.2-vision',
    messages=[{
        'role': 'user',
        'content': 'Fale apenas o que voce vê, como (objetos mais evidentes, o valor total, valor da cedula, nome do remedio, etc..). Sem comentar, destacar, ou interpretar, não colocar("*" "\\n") output apenas texto',
        'images': [os.path.join(image_dir, latest_image)]
    }],
    options={'temperature': 0},
)

# Imprimir a resposta do modelo
print(response.message.content)

wav_file = wave.open("output.wav", "w")
voice.synthesize(response.message.content, wav_file)
