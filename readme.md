
Projeto Vision
--------------

Projeto dedicado a deficientes visuais. Apresenta algumas limitações, coloca objetos descreve coisas desnecessárias, valores trocados, etc, então tenha cuidado! 

Requisitos: 
- Um pc bom com uma boa placa de video, para rodar o ollama com o llama3.2-Vision
- Celular android, com modo de depuração por wifi ativado. 

Usa o [Piper](https://github.com/rhasspy/piper) com a voz do Faber [Faber](https://github.com/rhasspy/piper/blob/master/VOICES.md).


como instalar:
bash 00_instalador.sh

pegar as coordenadas do clique da foto editar o arquivo 1_tira_foto.sh linha: adb shell input tap X Y # (valor de X e Y ativar LOCALIZADOR DE PONTEIRO {Opções do desenvolvedor}  que mostra na tela as coordenadas )

Exemplos de uso

Simulação de uma foto de uma conta de agua:
bash 0_vision.sh 
resultado:
exemplos/output1.wav (falado no celular)

Usando no pc para fala texto:
python le_texto.py "Exemplo de como eu leio o Texto!"
resultado:
exemplos/output2.wav
