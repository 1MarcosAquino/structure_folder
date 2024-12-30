# structure

#### Este projeto cria um arquivo markdown com a estrutura de pastas de um diretório. Projetado para funcionar como um comando bash personalizado.

### Exemplo de Structure.md
````md
      # Structure
      ````
      project/
      ├── README.md
      ├── Structure.md
      └── structure.sh
      ````
````


## Como Usar
### Siga os passos abaixo para configurar e usar o comando bash personalizado:

1. Crie um arquivo.sh

2. Copie o conteudo do arquivo structure.sh e cole no arquivo.sh que você criou.

3. Torne o arquivo.sh executável

````bash

chmod +x arquivo.sh

````
4. Mova para um diretório no PATH, como /usr/local/bin ou $HOME/bin

````bash

sudo mv arquivo.sh /usr/local/bin/genstr

````

5. Agora, você pode usar o comando meu_comando em qualquer lugar no terminal

````bash

genstr

````