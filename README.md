# Folder Structure Generator

#### Esse Projeto foi criado para funcionar como um comando bash personalizado. Ao executar o comando **genstr** no diretorio raiz do projeto será criado um arquivo markdown com a estrutura de pastas do diretório. 

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

Execute o comando curl ou siga ou passo a passo.

````shell
sudo curl -o $HOME/bin/genstr https://raw.githubusercontent.com/1MarcosAquino/structure_folder/refs/heads/main/structure.sh && sudo chmod +x $HOME/bin/genstr
````
1. Crie um **arquivo.sh**

2. Copie o conteudo do arquivo **structure.sh** e cole no **arquivo.sh** que você criou.

3. Torne o **arquivo.sh** executável

````shell

chmod +x arquivo.sh

````
4. Mova para um diretório no PATH, como /usr/local/bin ou $HOME/bin

````shell

sudo mv arquivo.sh /usr/local/bin/genstr

````

5. Agora, você pode usar o comando **genstr** na raiz do projeto para gerar a estrutura.

````shell

genstr

````
