# Projeto Vision

Projeto dedicado a auxiliar pessoas com deficiência visual. Utiliza inteligência artificial para descrever o ambiente e reconhecer textos em imagens. **Atenção**: O sistema ainda apresenta algumas limitações, como a descrição de objetos desnecessários, troca de valores e outras imprecisões. 

## 🎥 Lives Demonstrativas
- **Live 1:** [Assista aqui](https://www.youtube.com/watch?v=3Si2rxoU4yk)
- **Live 2:** [Assista aqui](https://www.youtube.com/watch?v=wCPHE51jPjM)

## 📋 Requisitos
Para rodar o Projeto Vision, você precisará de:
- **PC com uma boa placa de vídeo** para rodar o Ollama com o modelo **LLaMA 3.2-Vision**.
- **Celular Android** com **modo de depuração por Wi-Fi ativado**.
- **Piper** para síntese de voz, utilizando a voz do **Faber** ([Detalhes sobre o Piper](https://github.com/rhasspy/piper)).

## 🚀 Instalação
Para instalar o projeto, execute:
```bash
bash 00_instalador.sh
```

### Configuração do toque na tela (coordenadas)
Caso precise configurar o toque na tela para capturar a foto corretamente, edite o arquivo `1_tira_foto.sh` e ajuste a linha:
```bash
adb shell input tap X Y
```
Para encontrar os valores corretos de **X e Y**, ative o **Localizador de Ponteiro** nas Opções do Desenvolvedor do Android. Assim, as coordenadas serão exibidas na tela ao tocar no local desejado.

## 📌 Exemplos de Uso

### 1️⃣ Simulação de leitura de uma conta de água
Capturar uma imagem e processá-la:
```bash
bash 0_vision.sh
```
🔊 **Resultado:** [Saída de áudio gerada](./exemplos/output1.wav)

### 2️⃣ Leitura de texto no PC
Fazer com que o sistema leia um texto digitado:
```bash
python le_texto.py "Exemplo de como eu leio o texto!"
```
🔊 **Resultado:** [Saída de áudio gerada](./exemplos/output2.wav)

---

## 🛠️ Melhorias Futuras
- Refinamento na descrição de objetos.
- Redução de erros na leitura de valores.
- Melhor desempenho em diferentes tipos de texto e cenários.

**Projeto em desenvolvimento! Feedbacks são bem-vindos.** 🚀